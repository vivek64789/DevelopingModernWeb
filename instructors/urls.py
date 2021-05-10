from django.urls import path, include
from . import views

urlpatterns = [
    path('dashboard/', views.instructorDashboard),
    path('courses/', views.instructorCourses),
    path('pending-courses/', views.pendingCourses, name="pendingCourses"),
    path('payment/', views.instructorPayment),
    path('settings/', views.instructorSettings),
    path('view/<instructor_id>', views.instructorPublicProfile),
]
