from django import forms
from datetime import timedelta
from datetime import datetime
from c_s_app.models import *


class CamsRequestForm(forms.Form):
    cams_object = Camera.objects.all().order_by('pk')
    cams_choises = [(cam.pk, str(cam.pk)+'-'+cam.address) for cam in cams_object]
    # cams_choises = [('', 'Выбрать камеру'), ('', '----------')] + cams_choises
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

        if start > finish:
            raise forms.ValidationError('Время начала позже времени окончания')

        if start == finish:
            raise forms.ValidationError('Временной диапазон равен нулю')

        now = datetime.now()
        if finish > now:
            raise forms.ValidationError('Дата окончания не может быть больше текущей даты')


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


# class CarsRegistryForm(forms.Form):
#     marks_objects = Mark.objects.all().order_by('name')
#     marks_choises = [(mark.pk, mark.name) for mark in marks_objects]
#     marks = forms.ChoiceField(choices=marks_choises)
#
#     models_objects = Model.objects.all().order_by('name')
#     models_choises = [(model.pk, model.name) for model in models_objects]
#     models = forms.ChoiceField(choices=models_choises)
#
#     gen_objects = GenerationList.objects.all()
#     gen_choises = [(gen.pk, gen.name) for gen in gen_objects]
#     gens = forms.ChoiceField(choices=gen_choises)
