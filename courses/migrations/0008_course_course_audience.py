# Generated by Django 3.1.7 on 2021-04-09 01:06

import ckeditor.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0007_course_course_modified_date'),
    ]

    operations = [
        migrations.AddField(
            model_name='course',
            name='course_audience',
            field=ckeditor.fields.RichTextField(blank=True, null=True),
        ),
    ]