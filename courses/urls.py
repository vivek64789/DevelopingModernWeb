from django.urls import path, include
from . import views
from rest_framework.routers import DefaultRouter

router = DefaultRouter()

# Registering viewset of courses
router.register('course', views.CourseViewSet, basename='course')
router.register('topic', views.CourseTopicViewSet, basename='topic')

urlpatterns = [
    path('', views.home,name="home"),
    path('api/', include(router.urls)),
    path('become-instructor/', views.becomeInstructor, name="becomeInstructor"),
    path('courses/', views.courses, name = "courses"),
    path('courses/<slug:data>', views.coursesFilter, name = "courses"),
    path('news/', views.news, name="newsAndNotices"),
    path('contact/', views.contact),
    path('create-course/', views.addCourseTitle, name='addCourseTitle'),
    path('create-course/<course_id>', views.courseBuilder, name='courseBuilder'),
    path('addCourseContent/<course_id>', views.addCourseContent, name='addCourseContent'),
    path('addTopic/', views.addTopic, name='addTopic'),
    path('addTopicContent/', views.addTopicContent, name='addTopicContent'),
    path('deleteTopic/', views.deleteTopic, name='deleteTopic'),
    path('editTopicContent/', views.editTopicContent, name='editTopicContent'),
    path('course/<course_id>', views.viewCourse, name='viewCourse'),
    path('course/read/<course_id>', views.readCourse, name='readCourse'),
]
