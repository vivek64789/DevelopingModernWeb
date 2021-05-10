from django.contrib import admin
from .models import Course, CourseTopic

# Register your models here.
# @admin.register(Course)
# class CourseAdmin(admin.ModelAdmin):
#     list_display = ('')

admin.site.register(Course)
admin.site.register(CourseTopic)