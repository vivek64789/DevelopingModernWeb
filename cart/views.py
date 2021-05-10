import json

from django.db.models import Q
from django.http import JsonResponse, HttpResponse
from django.shortcuts import render, redirect
import requests
from django.views.decorators.csrf import csrf_exempt

from courses.models import Course
from .models import CartItem, Cart, OrderStatus


def cartPage(request):
    amount = 0
    transaction_charge = 50
    total_cart_amount = 0
    total_items_cart = 0
    if request.user.is_authenticated:
        total_items_cart = len(CartItem.objects.filter(user=request.user))

    try:
        cart = Cart.objects.get(user_id=request.user.id)
        # print(cart.id)

        cart_item = CartItem.objects.filter(cart_id=cart.id)
        # print(cart_item)

        cart_items = [c for c in CartItem.objects.all() if c.user == request.user]
        print(cart_items)

        if cart_items:
            for i in cart_items:
                tempAmount = (i.quantity * i.course.course_price)
                amount += tempAmount
                total_cart_amount = amount + transaction_charge

            total_items = cart_item.count()
            context = {
                'cart_item': cart_item,
                'total_items': total_items,
                'total_price': amount,
                'transaction_charge': transaction_charge,
                'total_cart_amount': total_cart_amount,
                'total_items_cart':total_items_cart,
            }
            return render(request, 'cart/cart.html', context)
        else:
            return render(request, 'cart/emptyCart.html')
    except:
        context = {
            'total_items_cart':total_items_cart,
        }
        return render(request, 'cart/emptyCart.html',context)


def increaseCart(request):
    if request.method == "GET":
        cart_id = request.GET['cart_id']
        print(cart_id)
        c = CartItem.objects.get(Q(course=cart_id) & Q(user=request.user))
        c.quantity += 1
        c.save()
        amount = 0
        transaction_charge = 50
        total_cart_amount = 0
        cart_items = [c for c in CartItem.objects.all() if c.user == request.user]

        if cart_items:
            for i in cart_items:
                tempAmount = (i.quantity * i.course.course_price)
                amount += tempAmount
                total_cart_amount = amount + transaction_charge

            context = {
                'quantity': c.quantity,
                'total_cart_amount': total_cart_amount,
                'total_price': amount,

            }

            return JsonResponse(context)


def decreaseCart(request):
    if request.method == "GET":
        cart_id = request.GET['cart_id']
        print(cart_id)
        c = CartItem.objects.get(Q(course=cart_id) & Q(user=request.user))
        c.quantity -= 1
        c.save()
        amount = 0
        transaction_charge = 50
        total_cart_amount = 0
        cart_items = [c for c in CartItem.objects.all() if c.user == request.user]

        for i in cart_items:
            tempAmount = (i.quantity * i.course.course_price)
            amount += tempAmount
            total_cart_amount = amount + transaction_charge

        context = {
            'quantity': c.quantity,
            'total_cart_amount': total_cart_amount,
            'total_price': amount,

        }
        return JsonResponse(context)
    return HttpResponse("Null")


def removeCart(request):
    if request.method == "GET":
        cart_id = request.GET['cart_id']
        print(cart_id)
        c = CartItem.objects.get(Q(course=cart_id) & Q(user=request.user))
        c.delete()
        amount = 0
        transaction_charge = 50
        total_cart_amount = 0
        try:
            cart_items = [c for c in CartItem.objects.all() if c.user == request.user]

            if cart_items:
                for i in cart_items:
                    tempAmount = (i.quantity * i.course.course_price)

                context = {
                    'total_cart_amount': total_cart_amount + transaction_charge,
                    'total_price': amount,

                }
                return JsonResponse(context)

            context = {
                'total_cart_amount': total_cart_amount + transaction_charge,
                'total_price': amount,

            }
            return JsonResponse(context)

        except:
            pass


def updateCart(request):
    course_id = request.POST.get('course_id')
    course = Course.objects.get(pk=course_id)
    global cart_items, cart
    is_already_ordered = OrderStatus.objects.filter(course=course, user=request.user).exists()
    if is_already_ordered:
        return JsonResponse({'course_price': course.course_price, "is_already_ordered": True, 'course_id': course.id})

    else:
        cart = Cart.objects.get(user=request.user.id)

        status = False
        try:
            cart_items = CartItem.objects.filter(course_id=course.id, user=request.user)
            if cart_items:
                status = True
        except:
            pass

        if not status:
            add = CartItem.objects.create(cart=cart, user=request.user, course=course, price=course.course_price,
                                          quantity=1)
            add.save()
            return JsonResponse(
                {'course_price': course.course_price, 'course_name': course.course_name, 'status': True})

    return JsonResponse({'course_price': course.course_price, 'status': False})


def checkOut(request):
    user = request.user
    amount = 0
    transaction_charge = 50
    total_cart_amount = 0
    cart_items = [c for c in CartItem.objects.all() if c.user == request.user]
    total_items_cart = 0
    if request.user.is_authenticated:
        total_items_cart = len(CartItem.objects.filter(user=request.user))

    if cart_items:
        for i in cart_items:
            tempAmount = (i.quantity * i.course.course_price)
            amount += tempAmount
            total_cart_amount = amount + transaction_charge

    context = {
        'total_amount': total_cart_amount,
        'total_items_cart':total_items_cart,
    }
    return render(request, "cart/checkout.html", context)


def orderComplete(request):
    user = request.user
    cart = CartItem.objects.filter(user=user)
    for c in cart:
        OrderStatus(user=user, course=c.course, quantity=c.quantity).save()
        c.delete()
    return redirect('orders')


@csrf_exempt
def verifyKhaltiPayment(request):
    data = request.POST
    course_id = data['product_identity']
    token = data['token']
    amount = data['amount']

    url = "https://khalti.com/api/v2/payment/verify/"
    payload = {
        "token": token,
        "amount": amount,
    }
    headers = {
        "Authorization": "test_secret_key_256da95d24d9405b851e91d803d30e26"
    }

    response = requests.post(url, payload, headers=headers)
    print(response)

    response_data = json.loads(response.text)
    status_code = str(response.status_code)
    # print(response_data)

    if status_code == "400":
        response = JsonResponse({'status': 'false', 'message': response_data}, status=500)
        return response

    return JsonResponse(f"Payment Success for IDX  {response_data['user']['idx']}", safe=False)
