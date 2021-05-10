from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save, pre_save
from django.dispatch import receiver

from courses.models import Course
from students.models import Student


class Cart(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    order_status = models.BooleanField(default=False)
    total_price = models.FloatField(default=0)

    def __str__(self):
        return str(self.user.username) + " " + str(self.total_price)


class CartItem(models.Model):
    cart = models.ForeignKey(Cart, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    course = models.ForeignKey(Course, on_delete=models.CASCADE)
    price = models.FloatField(default=0)
    quantity = models.PositiveIntegerField(default=1)

    def __str__(self):
        return str(self.user.username) + " " + str(self.course.course_name)


class OrderStatus(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    course = models.ForeignKey(Course, on_delete=models.CASCADE)
    quantity = models.PositiveIntegerField(default=1)
    order_date = models.DateTimeField(auto_now_add=True)
    status = models.BooleanField(default=False)


@receiver(post_save, sender=CartItem)
def updatePrice(sender, **kwargs):
    cart_item = kwargs['instance']
    price_of_product = Course.objects.get(id=cart_item.course.id)
    cart_item.price = cart_item.quantity * float(price_of_product.course_price)
    total_cart_items = CartItem.objects.filter(user=cart_item.user)

    cart = Cart.objects.get(id=cart_item.cart.id)
    cart.total_price = cart_item.price
    cart.save()
