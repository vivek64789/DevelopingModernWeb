from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.http import HttpResponse
from django.shortcuts import render
from accounts.auth import student_only
from cart.models import OrderStatus
from courses.forms import InstructorForm
from courses.models import Course
from instructors.models import Instructor


@student_only
def studentDashboard(request):
    total_course_enrolled = len(OrderStatus.objects.filter(user=request.user))

    context = {
        'active_dashboard': "active",
        'total_course_enrolled':total_course_enrolled,
    }
    return render(request, 'students/dashboard.html',context)


def studentOrders(request):
    orders = OrderStatus.objects.filter(user=request.user)
    context = {
        'orders': orders,
        'active_my_orders':"active"
    }
    return render(request, 'students/orders.html', context)


def studentLearnings(request):
    order = OrderStatus.objects.filter(user=request.user)
    context = {
        'order': order,
        'active_my_learning': "active"
    }
    return render(request, 'students/learnings.html', context)


def becomeInstructor(request):
    is_instructor_pending = ""
    is_instructor = ""
    if request.method == "POST":
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        profile_image = request.FILES['profile_image']
        print(profile_image)
        Instructor.objects.create(first_name=first_name, last_name=last_name, profile_image=profile_image,
                                  user=request.user).save()
        return render(request, 'students/becomeInstructor.html')

    else:
        instructor = Instructor.objects.filter(user=request.user).exists()
        if instructor:
            is_instructor_pending = True

        already_instructor = User.objects.filter(pk= request.user.id, is_staff=True).exists()
        if already_instructor:
            is_instructor = True
            is_instructor_pending = False

        context = {
            'instructor_form': InstructorForm,
            'is_instructor_pending': is_instructor_pending,
            'is_instructor': is_instructor,
            'active_become_instructor': "active",
        }
        return render(request, 'students/becomeInstructor.html',context)


def studentSettings(request):
    context ={
        'active_settings': "active"
    }
    return render(request, 'students/studentSettings.html',context)
