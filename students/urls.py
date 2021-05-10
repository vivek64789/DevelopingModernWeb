from django.urls import path, include
from . import views

urlpatterns = [
    path('dashboard/', views.studentDashboard, name="studentDashboard"),
    path('orders/', views.studentOrders, name="orders"),
    path('learnings/', views.studentLearnings, name="studentLearnings"),
    path('become-instructor/', views.becomeInstructor, name="studentBecomeInstructor"),
    path('settings/', views.studentSettings, name="studentSettings"),
]
