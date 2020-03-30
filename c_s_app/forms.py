from django import forms
from datetime import timedelta
from datetime import datetime
from c_s_app.models import *


class CamsRequestForm(forms.Form):
    cams_object = Camera.objects.all().order_by('pk')
    cams_choises = [(cam.address, str(cam.pk)+'-'+cam.address) for cam in cams_object]
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

        if finish - start > timedelta(days=3):
            raise forms.ValidationError('Невозможен запрос более трех суток')


class CarSearchForm(forms.Form):
    car_number = forms.CharField(max_length=16, required=False,
                                 widget=forms.TextInput(attrs={'placeholder': 'рег. номер авто', 'size': '12'}))
    car_brand = forms.CharField(required=False, max_length=32,
                                widget=forms.TextInput(attrs={'placeholder': 'марка', 'size': '12'}))
    car_model = forms.CharField(required=False, max_length=32,
                                widget=forms.TextInput(attrs={'placeholder': 'модель', 'size': '12'}))
    car_generation = forms.CharField(required=False, max_length=32,
                                     widget=forms.TextInput(attrs={'placeholder': 'поколение', 'size': '12'}))
    car_color = forms.CharField(required=False, max_length=32,
                                widget=forms.TextInput(attrs={'placeholder': 'цвет авто', 'size': '12'}))


class TopBarSearchForm(forms.Form):
    search_text = forms.CharField(max_length=32,
                                  widget=forms.TextInput(attrs={'placeholder': 'Найти...',
                                                                'class': "form-control bg-light border-0 small"}))


class FeedbackForm(forms.Form):
    text = forms.CharField(widget=forms.Textarea(attrs={'rows': '3', 'style': 'width:100%'}))
