from django.contrib.auth.models import User
from django.db import models


class Instructor(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    first_name = models.CharField(max_length=200, null= False, blank= False)
    last_name = models.CharField(max_length=200, null=True, blank=True)
    status_choices = (
        ('Approved', 'Approved'),
        ('Pending', 'Pending')
    )
    status = models.CharField(choices=status_choices, default="Pending", max_length=50)
    profile_image = models.ImageField(upload_to="static/uploads", null=False, blank=False)
    date_requested = models.DateTimeField(auto_now_add=True)


class InstructorPayment(models.Model):
    instructor = models.ForeignKey(Instructor, on_delete=models.CASCADE)
    payment_choices = (
        ('Esewa','Esewa'),
        ('Khalti','Khalti'),
        ('Paypal','Paypal')
    )
    account_holder_name = models.CharField(max_length=100,null=True, blank=True)
    payment_method = models.CharField(choices=payment_choices, default='Paypal', max_length=50)
    payment_id = models.CharField(max_length=100,null=True, blank=True)

