

from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', include("admins.urls")),
    path('instructor/', include("instructors.urls")),
    path('student/', include("students.urls")),
    path('cart/', include("cart.urls")),
    path('', include("accounts.urls"))
]

