# Generated by Django 3.1.7 on 2021-04-18 12:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('instructors', '0005_auto_20210418_1659'),
    ]

    operations = [
        migrations.AddField(
            model_name='instructor',
            name='status',
            field=models.CharField(choices=[('Approved', 'Approved'), ('Pending', 'Pending')], default='Pending', max_length=50),
        ),
    ]
