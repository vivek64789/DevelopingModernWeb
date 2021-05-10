from django.urls import path
from . import views

urlpatterns = [
    path('', views.cartPage, name = "cart"),
    path('updateCart/', views.updateCart, name = "updateCart"),
    path('increaseCart/', views.increaseCart, name = "increaseCart"),
    path('decreaseCart/', views.decreaseCart, name = "decreaseCart"),
    path('removeCart/', views.removeCart, name = "removeCart"),
    path('checkout/', views.checkOut, name = "checkout"),
    path('verifyKhaltiPayment/', views.verifyKhaltiPayment, name = "verifyKhaltiPayment"),
    path('orderComplete/', views.orderComplete, name = "orderComplete"),
]
