from django.contrib.auth.models import User
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render, redirect

from accounts.auth import admin_only
from cart.models import Cart
from courses.models import Course
from instructors.models import Instructor
from students.models import Student
from accounts.forms import UserRegisterForm


@admin_only
def adminDashboard(request):
    courses = Course.objects.all()
    total_course = 0
    for i in courses:
        total_course += 1

    users = User.objects.all()
    total_users = 0
    for i in users:
        total_users += 1

    students = User.objects.filter(is_superuser=False, is_staff=False)
    total_students = 0
    for i in students:
        total_students += 1

    instructors = User.objects.filter(is_superuser=False, is_staff=True)
    total_instructors = 0
    for i in instructors:
        total_instructors += 1

    context = {
        'total_courses': total_course,
        'total_users': total_users,
        'total_students': total_students,
        'total_instructors': total_instructors,
        'active_dashboard': "active"
    }

    return render(request, 'admins/dashboard.html', context)


@admin_only
def showUser(request):
    user = User.objects.all()

    context = {
        'users': user,
        'active_user':"active",
    }
    return render(request, 'admins/showUser.html', context)


@admin_only
def addUser(request):
    if request.method == "POST":
        username = request.POST['username']
        email = request.POST['email']
        password = request.POST['password1']
        user = User.objects.create_user(username=username, email=email, password=password)
        Cart.objects.create(user=user)
        user.save()
        return redirect('showUser')

    context = {
        'form': UserRegisterForm,
        'user_type': "User",
        'active_user': "active"
    }
    return render(request, 'admins/addUser.html', context)


@admin_only
def showCourse(request):
    course = Course.objects.all()

    context = {
        'courses': course,
        'active': 'active',
        'active_courses': "active"
    }
    return render(request, 'admins/showCourses.html', context)


@admin_only
def showPendingCourse(request):
    course = Course.objects.filter(is_approved='Pending')
    print(course)

    context = {
        'courses': course,
        'active': 'active',
        'active_pending_courses': "active"
    }
    return render(request, 'admins/showPendingCourses.html', context)


@admin_only
def showStudent(request):
    student = User.objects.filter(is_superuser=False, is_staff=False)
    print(student)
    context = {
        'students': student,
        'active_students': 'active'
    }
    return render(request, 'admins/showStudents.html', context)


@admin_only
def showInstructor(request):
    instructor = Instructor.objects.filter(status="Approved")
    context = {
        'instructors': instructor,
        'active_instructor': 'active'
    }
    return render(request, 'admins/showInstructors.html', context)


@admin_only
def pendingInstructors(request):
    instructor = Instructor.objects.filter(status="Pending")

    context = {
        'instructors': instructor,
        'active_pending_instructor': 'active'
    }
    return render(request, 'admins/pendingInstructors.html', context)


@admin_only
def addInstructor(request):
    if request.method == "POST":
        username = request.POST['username']
        email = request.POST['email']
        password = request.POST['password1']
        user = User.objects.create_user(username=username, email=email, password=password, is_staff=True)
        Instructor.objects.create(first_name=username, status="Approved", user_id=user.id)
        Cart.objects.create(user=user)
        user.save()
        return redirect('showInstructor')

    context = {
        'form': UserRegisterForm,
        'user_type': "Instructor",
    }
    return render(request, 'admins/addUser.html', context)


def approveInstructor(request):
    if request.method == "POST":
        instructor_id = request.POST.get('instructor_id')
        print(instructor_id)
        instructor = Instructor.objects.get(user=instructor_id)
        instructor.status = "Approved"
        user = User.objects.get(pk=instructor_id)
        user.is_staff = True
        user.save()
        instructor.save()
        return JsonResponse({'status': True})

    else:
        return JsonResponse({'status': False})


def disApproveInstructor(request):
    if request.method == "POST":
        instructor_id = request.POST.get('instructor_id')
        print(instructor_id)
        instructor = Instructor.objects.get(pk=instructor_id)
        instructor.delete()
        return JsonResponse({'status': True})

    else:
        return JsonResponse({'status': False})


def deleteCourse(request):
    if request.method == "POST":
        course_id = request.POST.get('course_id')
        print(course_id)
        course = Course.objects.get(pk=course_id)
        course.delete()
        return JsonResponse({'status': True})

    else:
        return JsonResponse({'status': False})


@admin_only
def deleteUser(request):
    if request.method == "POST":
        user_id = request.POST.get('user_id')
        print(user_id)
        user = User.objects.get(pk=user_id)
        user.delete()
        return JsonResponse({'status': True})

    else:
        return JsonResponse({'status': False})


def approveCourse(request):
    if request.method == "POST":
        course_id = request.POST.get('course_id')
        course = Course.objects.get(pk=course_id)
        course.is_approved = "Approved"
        course.save()
        return JsonResponse({'status': True})

    else:
        return JsonResponse({'status': False})


def suspendCourse(request):
    if request.method == "POST":
        course_id = request.POST.get('course_id')
        course = Course.objects.get(pk=course_id)
        course.is_approved = "Pending"
        course.save()
        return JsonResponse({'status': True})

    else:
        return JsonResponse({'status': False})
