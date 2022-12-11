# Generated by Django 4.1.2 on 2022-10-10 16:11

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='CourseCategory',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=150)),
                ('descriprion', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Student',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('full_name', models.CharField(max_length=100)),
                ('teacher_profile_img', models.ImageField(blank=True, upload_to='')),
                ('email', models.CharField(max_length=100)),
                ('password', models.CharField(max_length=100)),
                ('group', models.CharField(max_length=100)),
                ('mobile_number', models.CharField(max_length=100)),
                ('necessary_categories', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Teacher',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('full_name', models.CharField(max_length=100)),
                ('teacher_profile_img', models.ImageField(blank=True, upload_to='')),
                ('email', models.CharField(max_length=100)),
                ('password', models.CharField(max_length=100)),
                ('qualification', models.CharField(max_length=100)),
                ('mobile_number', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Course',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=150)),
                ('descriprion', models.TextField()),
                ('cousre_img', models.ImageField(blank=True, upload_to='')),
                ('category', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.coursecategory')),
                ('teacher', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main.teacher')),
            ],
        ),
    ]
