# Generated by Django 3.1.7 on 2021-04-10 01:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0014_auto_20210410_0720'),
    ]

    operations = [
        migrations.AlterField(
            model_name='course',
            name='course_duration',
            field=models.DurationField(blank=True, null=True),
        ),
    ]