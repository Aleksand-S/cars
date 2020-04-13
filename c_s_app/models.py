from django.contrib.auth.models import User
from django.core.validators import MinValueValidator, MaxValueValidator
from django.db import models


class Camera(models.Model):
    name = models.CharField(max_length=64)
    cam_id = models.CharField(max_length=64)
    address = models.CharField(max_length=128)
    lat = models.CharField(max_length=32, null=True)
    long = models.CharField(max_length=32, null=True)
    azimuth = models.CharField(max_length=32, null=True)


class Color(models.Model):
    name = models.CharField(max_length=32)


class Mark(models.Model):
    name = models.CharField(max_length=32)


class GenerationList(models.Model):
    name = models.CharField(max_length=16, null=True)


class Model(models.Model):
    name = models.CharField(max_length=32, null=True)
    mark = models.ForeignKey(Mark, on_delete=models.CASCADE, null=True)


class Generation(models.Model):
    model = models.ForeignKey(Model, on_delete=models.CASCADE, null=True)
    name = models.ForeignKey(GenerationList, on_delete=models.CASCADE, null=True)
    path = models.FilePathField(path=None, null=True)


class Request(models.Model):
    request_time = models.DateTimeField(auto_now=True)
    cameras = models.ManyToManyField(Camera, through="RequestCameraURL")
    start = models.DateTimeField()
    finish = models.DateTimeField()


class RequestCameraURL(models.Model):
    request = models.ForeignKey(Request, on_delete=models.CASCADE)
    camera = models.ForeignKey(Camera, on_delete=models.CASCADE)
    url = models.CharField(max_length=256, null=True)
    recognition_progress = models.IntegerField(validators=[MinValueValidator(0), MaxValueValidator(100)], null=True, default=0)


class ResultDeepstream(models.Model):
    request = models.ForeignKey(Request, on_delete=models.CASCADE, null=True)
    camera = models.ForeignKey(Camera, on_delete=models.CASCADE, null=True)
    timestamp = models.DateTimeField(null=True)
    car_number = models.CharField(max_length=16, null=True)
    car_obj = models.ForeignKey(Generation, on_delete=models.CASCADE, null=True)
    car_probability = models.IntegerField(validators=[MinValueValidator(0), MaxValueValidator(100)], null=True)
    car_color = models.ForeignKey(Color, on_delete=models.CASCADE, null=True)
    color_probability = models.IntegerField(validators=[MinValueValidator(0), MaxValueValidator(100)], null=True)
    car_photo = models.ImageField(upload_to='images/', null=True)
    car_video = models.FileField(upload_to='videos/', null=True)


class Feedback(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True)
    time = models.DateTimeField(auto_now_add=True)
    text = models.TextField()
