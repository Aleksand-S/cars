from time import sleep
from django.http import JsonResponse
from datetime import datetime
from c_s_app.models import *


def progress(request):
    print('Вход в AJAX ', datetime.now())
    request_pk = request.GET.get('request_pk', None)
    # берем статус Запроса из БД и отправляем в JS
# ----------- temporary block for testing Progress AJAX -------------------------------
    # симуляция прогресса
    curr_progress = request.GET.get('curr_progress', None)
    sleep(1)
    prgrss = 100
    data = {'progress': prgrss}
    print('Выход из AJAX', datetime.now())
    return JsonResponse(data)


def load_models(request):
    mark_id = request.GET.get('marks')
    mark_id = 1
    model_objs = Model.objects.filter(mark_id=mark_id).order_by('name')
    dict_models = [(model.pk, model.name) for model in model_objs]
    print('AJAX-load_models:\n', dict_models)
    return JsonResponse(dict_models)
