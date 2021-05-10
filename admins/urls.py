from django.urls import path, include
from . import views

urlpatterns = [
    path('dashboard/', views.adminDashboard, name= 'adminDashboard'),
    path('students/', views.showStudent, name='adminShowStudents'),
    path('users/', views.showUser, name="showUser"),
    path('instructors/', views.showInstructor, name = "showInstructor"),
    path('add-instructor/', views.addInstructor, name="addInstructor"),
    path('pending-instructors/', views.pendingInstructors, name="pendingInstructors"),
    path('courses/', views.showCourse,name="adminCourses"),
    path('pending-courses/', views.showPendingCourse),
    path('approve-course/', views.approveCourse, name="adminApproveCourse"),
    path('approve-instructor/', views.approveInstructor, name="adminApproveInstructor"),
    path('disapprove-instructor/', views.disApproveInstructor, name="adminDisApproveInstructor"),
    path('suspend-course/', views.suspendCourse, name="adminSuspendCourse"),
    path('delete-course/', views.deleteCourse, name="adminDeleteCourse"),
    path('add-user/', views.addUser, name="addUser"),
    path('delete-user/', views.deleteUser, name="adminDeleteUser"),
]
