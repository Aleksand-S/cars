from time import sleep
from django.http import JsonResponse
from datetime import datetime


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