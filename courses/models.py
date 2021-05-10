from django.contrib.auth.models import User
from django.db import models
from ckeditor.fields import RichTextField


class Course(models.Model):
    course_instructor = models.ForeignKey(User, null=True, blank=True, on_delete=models.CASCADE,
                                          related_name='courseInstructor')
    course_name = models.CharField(max_length=200, null=True, blank=False)
    course_description = RichTextField(blank=True, null=True)
    difficulty_level_choices = (('beginner_level', 'Beginner Level'), ('intermediate_level', 'Intermediate Level'),
                                ('experienced_level', 'Experienced Level'))
    difficulty_level = models.CharField(max_length=200, choices=difficulty_level_choices, default='beginner_level',
                                        null=True, blank=True)
    course_categories_choices = (
        ('choose', 'Choose Course Category'),
        ('MBBS', 'MBBS'),
        ('BDS', 'BDS'),
        ('LokSewa', 'LokSewa'),
    )
    course_categories = models.CharField(max_length=300, choices=course_categories_choices, default='choose', null=True,
                                         blank=True)
    course_price = models.BigIntegerField(null=True, blank=True)
    thumbnail = models.ImageField(upload_to='static/uploads', default='static/uploads/banner_image.png', null=True,
                                  blank=True)
    video_source_choices = (
        ('youtube', 'YouTube'),
        ('vimeo', 'Vimeo')
    )
    video_source = models.CharField(max_length=200, choices=video_source_choices, default='youtube', null=True,
                                    blank=True)
    video_url = models.CharField(max_length=2000, null=True, blank=True)
    course_duration = models.IntegerField(null=True, blank=True)
    course_requirements = RichTextField(blank=True, null=True)
    course_caption_choices = (
        ('English', 'English'),
        ('Nepali', 'Nepali'),
        ('Hindi', 'Hindi'),
    )
    course_caption = models.CharField(max_length=200, choices=course_caption_choices, default='English', null=True,
                                      blank=True)
    course_language_choices = (
        ('English', 'English'),
        ('Nepali', 'Nepali'),
        ('Hindi', 'Hindi'),
    )
    course_language = models.CharField(max_length=200, choices=course_language_choices, default='English', null=True,
                                       blank=True)
    course_modified_date = models.DateTimeField(auto_now_add=True)

    course_attachments = models.FileField(upload_to='static/uploads', null=True, blank=True)
    course_audience = RichTextField(blank=True, null=True)
    course_outcome = RichTextField(blank=True, null=True)
    is_approved_choices = (
        ('Pending', 'Pending'),
        ('Approved', 'Approved'),
    )
    is_approved = models.CharField(blank=True, null=True, choices=is_approved_choices, default='Pending',
                                   max_length=100)

    def __str__(self):
        return self.course_name


class CourseTopic(models.Model):
    course = models.ForeignKey(Course, null=False, blank=False, on_delete=models.CASCADE, related_name='courses')
    topic_title = models.CharField(max_length=200)
    topic_description = models.TextField(max_length=200)
    topic_duration = models.IntegerField(null=True, blank=True)
    topic_content = RichTextField(blank=True, null=True)

    def __str__(self):
        return self.topic_title
