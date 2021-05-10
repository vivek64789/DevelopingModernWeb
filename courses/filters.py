from courses.models import Course
import django_filters
from django_filters import CharFilter


class CourseFilter(django_filters.FilterSet):
    course_name_contains = CharFilter(field_name='course_name', lookup_expr='icontains')

    class Meta:
        model = Course
        fields = ''
        exclude = ['thumbnail', 'course_attachments', 'is_approved', 'course_instructor', 'video_url']


class CourseCategoryFilter(django_filters.FilterSet):
    course_categories = CharFilter(field_name='course_categories', lookup_expr='icontains')

    class Meta:
        model = Course
        fields = ''
        exclude = ['thumbnail', 'course_attachments', 'is_approved', 'course_instructor', 'video_url']
