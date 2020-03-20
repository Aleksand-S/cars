from django import forms
from datetime import timedelta
from datetime import datetime
from c_s_app.models import *


class CamsRequestForm(forms.Form):

    cams_object = Camera.objects.all().order_by('name')
    cams_choises = [(cam.name, cam.name) for cam in cams_object]
    cams = forms.ChoiceField(choices=cams_choises)

    start_date = forms.DateField(
        widget=forms.DateTimeInput(attrs={'type': 'date', 'class': "form-control form-control-user"}))
    start_time = forms.TimeField(
        widget=forms.DateTimeInput(attrs={'type': 'time', 'class': "form-control form-control-user"}))
    finish_date = forms.DateField(
        widget=forms.DateTimeInput(attrs={'type': 'date', 'class': "form-control form-control-user"}))
    finish_time = forms.TimeField(
        widget=forms.DateTimeInput(attrs={'type': 'time', 'class': "form-control form-control-user"}))


    def clean(self):
        cleaned_data = super().clean()

        start_date = cleaned_data.get('start_date')
        start_time = cleaned_data.get('start_time')
        start = datetime.combine(start_date, start_time)

        finish_date = cleaned_data.get('finish_date')
        finish_time = cleaned_data.get('finish_time')
        finish = datetime.combine(finish_date, finish_time)

        if finish-start > timedelta(days=3):
            raise forms.ValidationError('Невозможен запрос более трех суток')


class CarSearchForm(forms.Form):
    car_number = forms.CharField(max_length=16, widget=forms.TimeInput(attrs={'placeholder':'рег. номер авто'}))
    car_brand = forms.CharField(required=False, max_length=32, widget=forms.TimeInput(attrs={'placeholder':'марка авто'}))
    car_color = forms.CharField(required=False, max_length=32, widget=forms.TimeInput(attrs={'placeholder':'цвет авто'}))
