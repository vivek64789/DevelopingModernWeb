from rest_framework import serializers
from django import forms

from courses.models import Course, CourseTopic

class CourseTopicSerializer(serializers.ModelSerializer):
    class Meta:
        model = CourseTopic
        fields = "__all__"

        widgets = {
            'topic_title': forms.TextInput(attrs={'id': 'id-topic-title', 'placeholder': 'Enter Topic title...'}),
        }


class CourseSerializer(serializers.ModelSerializer):
    courses = CourseTopicSerializer(many=True, read_only=True)

    class Meta:
        model = Course
        fields = "__all__"

        widgets = {
            'course_title': forms.TextInput(attrs={'id': 'course_info', 'placeholder': 'Enter course title...'}),
        }
