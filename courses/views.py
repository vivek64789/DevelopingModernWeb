from django.contrib.auth.decorators import login_required
import requests
from django.http import JsonResponse, HttpResponseRedirect
from django.shortcuts import render, redirect, get_object_or_404
from django.urls import reverse
from rest_framework import viewsets

from accounts.auth import instructor_only, student_only
from cart.models import OrderStatus, CartItem
from .filters import CourseFilter, CourseCategoryFilter
from .models import Course, CourseTopic
from .forms import CourseForm, CourseTopicForm
from .serializers import CourseSerializer, CourseTopicSerializer


def courses(request):
    courses = Course.objects.all()
    context = {
        'courses': courses,
    }
    return render(request, 'courses/courses.html', context)


def coursesFilter(request, data=None):
    if request.method == "POST":
        all_course = Course.objects.all()
        course_filter = CourseFilter(request.POST, queryset=all_course)
        search_result = course_filter.qs
        context = {
            'courses': search_result,
            'course_filter':course_filter,
        }
        return render(request, 'courses/courses.html', context)

    elif request.method == "GET":
        courses = ""
        active_all = ""
        active_mbbs = ""
        active_bds = ""
        active_loksewa = ""
        active_django = ""

        if data == "all":
            courses = Course.objects.filter(is_approved="Approved")
            active_all = "active"

        if data == "mbbs":
            active_mbbs = "active"
            courses = Course.objects.filter(course_categories="mbbs",is_approved="Approved")

        if data == "bds":
            courses = Course.objects.filter(course_categories="bds",is_approved="Approved")
            active_bds = "active"

        if data == "loksewa":
            courses = Course.objects.filter(course_categories="loksewa",is_approved="Approved")
            active_loksewa = "active"

        if data == "django":
            courses = Course.objects.filter(course_categories="django",is_approved="Approved")
            active_django = "active"

        all_course = Course.objects.all()
        course_filter = CourseFilter(request.GET, queryset=all_course)

        context = {
            'course_filter':course_filter,
            'courses': courses,
            'active_all': active_all,
            'active_mbbs': active_mbbs,
            'active_bds': active_bds,
            'active_loksewa': active_loksewa,
            'active_django': active_django,
        }
        return render(request, 'courses/courses.html', context)


@login_required(login_url='/login')
@student_only
def becomeInstructor(request):
    return redirect('studentBecomeInstructor')


def news(request):
    return render(request, "courses/news.html")


def contact(request):
    return render(request, "courses/contact.html")


class CourseViewSet(viewsets.ModelViewSet):
    queryset = Course.objects.all()
    serializer_class = CourseSerializer


class CourseTopicViewSet(viewsets.ModelViewSet):
    queryset = CourseTopic.objects.all()
    serializer_class = CourseTopicSerializer


def home(request):
    url = "http://127.0.0.1:8000/api/course/"
    course = requests.get(url)
    course_data = course.json()
    courses = Course.objects.filter(is_approved="Approved")
    total_items_cart = 0
    if request.user.is_authenticated:
        total_items_cart = len(CartItem.objects.filter(user=request.user))

    context = {
        'api_url': url,
        'api_data': course_data,
        'courses': courses,
        'total_items_cart': total_items_cart,
    }
    return render(request, 'courses/home.html', context)


@login_required(login_url="/login")
@instructor_only
def courseBuilder(request, course_id):
    course_id_url = str(course_id)
    url = "http://127.0.0.1:8000/api/course/" + course_id_url + "/"
    course = requests.get(url)
    course_data = course.json()

    context = {
        'form': CourseForm,
        'topic_form': CourseTopicForm,
        'api_url': url,
        'api_data': course_data,
        'activate_course': 'active'
    }
    return render(request, 'courses/courseBuilder.html', context)


@login_required(login_url="/login")
@instructor_only
def addCourseTitle(request):
    print("request: ", request)
    if request.method == "POST":
        course_title = CourseForm(request.POST, request.FILES)
        print(course_title)
        if course_title.is_valid():
            course = course_title.save()
            # course.course_instructor = request.user
            # course.save()
            return HttpResponseRedirect(reverse('courseBuilder', kwargs={'course_id': course.id}))

    context = {
        'course_title_form': CourseForm,
    }

    return render(request, 'courses/addCourseTitle.html', context)


def addTopicContent(request):
    if request.method == "POST" and request.is_ajax():
        form = CourseTopicForm(request.POST)
        print(form)
        id_topic = request.POST.get('id_topic')
        form_data = request.POST.get('form_data')

        print("ID TOPIC: ", id_topic)
        print("FORM_data: ", form_data)
        topics = CourseTopic.objects.get(id=id_topic)
        topic_content = form_data["topic_content"]
        print(topic_content)


def addCourseContent(request, course_id):
    if request.method == "POST":
        instance = get_object_or_404(Course, id=course_id)
        form = CourseForm(data=request.POST, files=request.FILES, instance=instance)
        print(form)
        if form.is_valid():
            instance = form.save(commit=False)
            instance.course_instructor = request.user
            instance.save()
        else:
            print("Invalid")

        course_data = {'status': True}
        return JsonResponse(course_data)


def addTopic(request):
    if request.method == "POST" and request.is_ajax():
        form = CourseTopicForm(request.POST)
        print(form)

        if form.is_valid():
            form.save()
            # return render(request, "courses/loadTopics.html")
            # render_to_response('courses/loadTopics.html')
            return JsonResponse({'status': True})
        else:
            return JsonResponse({'status': False})


def deleteTopic(request):
    if request.method == "POST":
        id = request.POST.get('sid')
        print(id)
        pi = CourseTopic.objects.get(pk=id)
        pi.delete()
        return JsonResponse({'status': 1})
    else:
        return JsonResponse({'status': 0})


def editTopicContent(request):
    if request.method == "POST":
        id = request.POST.get('sid')
        print(id)

        topic_content = request.POST.get('topic_content')

        topic = CourseTopic.objects.get(pk=id)

        topic.topic_content = topic_content
        topic.save()

        topic_data = {'topic_id': topic.id, 'topic_title': topic.topic_title}
        return JsonResponse(topic_data)


#  view course

def viewCourse(request, course_id):
    course_data = Course.objects.get(pk=course_id)
    is_already_ordered = False
    if request.user.is_authenticated:
        is_already_ordered = OrderStatus.objects.filter(course=course_data, user=request.user).exists()
    course_id_url = str(course_id)
    url = "http://127.0.0.1:8000/api/course/" + course_id_url + "/"
    course = requests.get(url)
    topics = course.json()
    topics_data = topics['courses']
    topics_count = len(topics_data)
    total_items_cart = 0
    if request.user.is_authenticated:
        total_items_cart = len(CartItem.objects.filter(user=request.user))

    print(total_items_cart)

    embed_url = ""
    if course_data.video_source == "youtube":
        embed_url = "https://www.youtube.com/embed"
    elif course_data.video_source == "vimeo":
        embed_url = "https://player.vimeo.com/video"

    context = {
        'courses': course_data,
        'embed_url': embed_url,
        'topics': topics_data,
        'topics_count': topics_count,
        'total_items_cart': total_items_cart,
        'is_already_ordered': is_already_ordered,
    }
    return render(request, 'courses/viewCourse.html', context)


def readCourse(request, course_id):
    course_data = Course.objects.get(pk=course_id)
    course_id_url = str(course_id)
    url = "http://127.0.0.1:8000/api/course/" + course_id_url + "/"
    course = requests.get(url)
    topics = course.json()
    topics_data = topics['courses']

    context = {
        'courses': course_data,
        'topics': topics_data,
    }
    return render(request, 'courses/readCourse.html', context)
