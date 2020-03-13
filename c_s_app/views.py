from time import sleep
from datetime import datetime
from django.http import JsonResponse
from django.shortcuts import render, get_object_or_404, redirect
from django.views import View
import threading
import requests

from c_s_app.forms import *
from c_s_app.models import *

# TO DELETE
# class MainView(View):
#     def get(self, request):
#         return render(request, 'c_s_app/index.html')


class CamerasRequest(View):
    def get(self, request):
        form = CamsRequestForm()
        return render(request, 'c_s_app/index.html', {'form': form, 'submit_value': 'Отправить запрос'})

    def post(self, request):
        form = CamsRequestForm(request.POST)

        if form.is_valid():
            start_date = form.cleaned_data['start_date']
            start_time = form.cleaned_data['start_time']
            finish_date = form.cleaned_data['finish_date']
            finish_time = form.cleaned_data['finish_time']

            start = datetime.combine(start_date, start_time)
            finish = datetime.combine(finish_date, finish_time)

            cams_list = request.POST.getlist('cams')  # there may be a check on the number (20) of cameras

            cameras_array = [Camera.objects.get(address=cam) for cam in cams_list]
            request_object = Request.objects.create(start=start, finish=finish)

            # API request for URL
            def get_url(cam_id_request, start_request, finish_request):
                login = 'api'
                password = '1iGcg/AxRYPVAYRoJ2o7qcZL9aKZCFdYT+yVphmSKtQ='
                url_address = 'http://192.168.192.12:3030/archive'  # !!! clarify URL address
# ------------------------------ block to work with real API ------------------------------------------------------------
#                 api_request = requests.get(url_address, auth=(login, password),
#                                            params={'id': cam_id_request, 'start': start_request, 'end': finish_request})
#
#                 if api_request.status_code == 200:
#                     api_response = api_request.json()  # response converted to Python dictionary
#                     url = api_response['url']
# ------------------------------ end of block "to work with real API" ------------------------------------------------------------


# ------------------------------ block to test without real API ------------------------------------------------------------
                if True:
                    camera_obj = Camera.objects.get(cam_id=cam_id_request)
                    url = 'Test_URL:_request_pk:{}/cam_id:{}/cam_address:{}'.format(request_object.pk,
                                                                                    camera_obj.cam_id,
                                                                                    camera_obj.address)
# ------------------------------ end of block to test without real API ------------------------------------------------------------

                # URL record to DB
                    camera_obj = Camera.objects.get(cam_id=cam_id_request)
                    obj_for_url = RequestCameraURL.objects.get(request=request_object, camera=camera_obj)
                    obj_for_url.url = url
                    obj_for_url.save()

                    # отправка URL в DeepStream
                    # здесь будет redirect на страницу с результатом обработки через DeepStream

            for cam in cameras_array:
                request_object.cameras.add(cam)

                # URL requests in different Threads
                strt = request_object.start.isoformat()
                fnsh = request_object.finish.isoformat()
                threading.Thread(target=get_url, args=(cam.cam_id, strt, fnsh)).start()

            return redirect("/cam_request/{}".format(request_object.pk))  # здесь будет redirect на страницу с ожиданием обработки

        return render(request, 'c_s_app/index.html', {'form': form})


class CamerasRequestProgress(View):
    def get(self, request, request_id):
        # в цикле проверяет статус обработки
        # когда все ссылки обработаны на 100%, то перенаправляет на ссылку с результатом
        form = CamsRequestForm()
        cameras_request_obj = get_object_or_404(Request, pk=request_id)
        progress = 0
        return render(request, 'c_s_app/request_progress.html', {'cameras_request_obj': cameras_request_obj,
                                                                 'form': form,
                                                                 'progress': progress})

def progress(request):
    print('Вход в Django AJAX')
    request_pk = request.GET.get('request_pk', None)
    # берем статус Запроса из БД и отправляем в JS
# ----------- temporary block for testing Progress AJAX -------------------------------
    # симуляция прогресса
    curr_progress = request.GET.get('curr_progress', None)
    sleep(1)
    prgrss = 100
    data = {'progress': prgrss}
    return JsonResponse(data)


class RequestResultView(View):
    def get(self, request, request_id):
        request_id = 27  # пока для тестирования берем только Request pk=27
        request_obj = get_object_or_404(Request, pk=request_id)
        results_objs = request_obj.resultdeepstream_set.all().order_by('pk')
        return render(request,
                      'c_s_app/request_result.html',
                      {'request_results': results_objs, 'request_obj': request_obj})


class RequestsListView(View):
    def get(self, request):
        request_objs = Request.objects.all().order_by('pk')
        return render(request, 'c_s_app/requests_list.html', {'request_objs': request_objs})


class CarSearchView(View):
    def get(self, request):
        form = CarSearchForm()
        return render(request, 'c_s_app/car_search.html', {'form':form})

    def post(self, request):
        form_search = CarSearchForm()
        form_result = CarSearchForm(request.POST)

        if form_result.is_valid():
            car_num = form_result.cleaned_data['car_number']
            car_brand = form_result.cleaned_data['car_brand']
            car_color = form_result.cleaned_data['car_color']

            if len(car_brand) == 0 and len(car_color) == 0:
                search_results = ResultDeepstream.objects.filter(car_number=car_num)
            elif len(car_color) == 0:
                search_results = ResultDeepstream.objects.filter(car_number=car_num).filter(car_brand=car_brand)
            elif len(car_brand) == 0:
                search_results = ResultDeepstream.objects.filter(car_number=car_num).filter(car_color=car_color)
            else:
                search_results = ResultDeepstream.objects.\
                    filter(car_number=car_num).filter(car_brand=car_brand).filter(car_color=car_color)


            return render(request, 'c_s_app/car_search.html', {'form': form_search,
                                                               'search_results': search_results})

        return render(request, 'c_s_app/car_search.html', {'form': form_search})

class EmptyView(View):
    def get(self, request):
        return render(request, 'c_s_app/emty_page.html')

