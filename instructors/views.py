from django.http import HttpResponse
from django.shortcuts import render
from accounts.auth import instructor_only
from courses.models import Course


@instructor_only
def instructorDashboard(request):
    total_courses = len(Course.objects.filter(course_instructor=request.user))
    total_pending_courses = len( Course.objects.filter(is_approved='Pending'))
    context = {
        'total_courses':total_courses,
        'total_pending_courses':total_pending_courses,
        'active_dashboard':"active",
    }
    return render(request, 'instructors/dashboard.html', context)


@instructor_only
def instructorCourses(request):
    courses = Course.objects.filter(course_instructor=request.user)
    context = {
        'courses':courses,
        'active_courses': "active",
    }
    return render(request, 'instructors/courses.html',context)


@instructor_only
def pendingCourses(request):
    courses = Course.objects.filter(course_instructor=request.user, is_approved="Pending")
    context = {
        'courses':courses,
        'active_pending_courses': "active",
    }
    return render(request, 'instructors/pendingCourses.html',context)



@instructor_only
def instructorPayment(request):
    context = {
        'active_payment': "active",
    }
    return render(request, 'instructors/payment.html', context)


@instructor_only
def instructorSettings(request):
    context = {
        'active_settings': "active",
    }
    return render(request, 'instructors/settings.html', context)


@instructor_only
def instructorPublicProfile(request, instructor_id):
    return HttpResponse("Instructor dashboard")
