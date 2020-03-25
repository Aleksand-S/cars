from django.core.validators import MinValueValidator, MaxValueValidator
from django.db import models


class Camera(models.Model):
    name = models.CharField(max_length=64)
    cam_id = models.CharField(max_length=64)
    address = models.CharField(max_length=128)
    lat = models.CharField(max_length=32, null=True)
    long = models.CharField(max_length=32, null=True)
    azimuth = models.CharField(max_length=32, null=True)


class Request(models.Model):
    request_time = models.DateTimeField(auto_now=True)
    cameras = models.ManyToManyField(Camera, through="RequestCameraURL")
    start = models.DateTimeField()
    finish = models.DateTimeField()


class RequestCameraURL(models.Model):
    request = models.ForeignKey(Request, on_delete=models.CASCADE)
    camera = models.ForeignKey(Camera, on_delete=models.CASCADE)
    url = models.CharField(max_length=256, null=True)

class ResultDeepstream(models.Model):
    request = models.ForeignKey(Request, on_delete=models.CASCADE)
    camera = models.ForeignKey(Camera, on_delete=models.CASCADE)
    timestamp = models.DateTimeField()
    car_number = models.CharField(max_length=16)
    car_brand = models.CharField(max_length=32)

    car_model = models.CharField(max_length=32)
    car_generation = models.CharField(max_length=32)
    car_probability = models.IntegerField(validators=[MinValueValidator(0), MaxValueValidator(100)])

    car_color = models.CharField(max_length=32)
    # probability = models.IntegerField(validators=[MinValueValidator(0), MaxValueValidator(100)])
    color_probability = models.IntegerField(validators=[MinValueValidator(0), MaxValueValidator(100)])
    car_photo = models.ImageField(upload_to='images/')
    car_video = models.FileField(upload_to='videos/', null=True)
