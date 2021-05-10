from django import forms

from instructors.models import Instructor
from .models import Course, CourseTopic
from django.forms import ModelForm


class CourseForm(ModelForm):
    class Meta:
        model = Course
        fields = "__all__"

        widgets = {
            'course_name': forms.TextInput(attrs={'id': 'course_info', 'placeholder': 'E.g. Physics, Python, '
                                                                                      'Photoshop.....'}),
        }


class CourseTopicForm(ModelForm):
    class Meta:
        model = CourseTopic
        fields = "__all__"

        widgets = {
            'topic_title': forms.TextInput(attrs={'id': 'id-topic-title', 'placeholder': 'Enter Topic title...'}),
            'topic_description': forms.Textarea(attrs={'class': 'form-control my-2', 'placeholder': 'Enter Topic Description...'}),
        }



class InstructorForm(ModelForm):
    class Meta:
        model = Instructor
        fields = "__all__"

        widgets = {
            'first_name' : forms.TextInput(attrs={'placeholder':'Enter your First name', 'class':'form-control my-2'}),
            'last_name' : forms.TextInput(attrs={'placeholder':'Enter your Last name', 'class':'form-control my-2'}),
            'education' : forms.TextInput(attrs={'placeholder':'Enter your Qualification', 'class':'form-control my-2'}),
        }