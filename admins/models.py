from django.contrib.auth.models import User
from django.db import models


class Admin(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    first_name = models.CharField(max_length=200, null= True, blank= True)
    last_name = models.CharField(max_length=200, null=True, blank=True)
    profile_image = models.ImageField(upload_to="static/uploads", default="static/uploads/user.png")

    @property
    def get_first_name(self):
        return self.first_name

    @property
    def get_last_name(self):
        return self.last_name

