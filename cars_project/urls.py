"""cars_project URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static

from c_s_app.views import *
from c_s_app.pylib.ajax import *

urlpatterns = [
    path('admin/', admin.site.urls),
    path('index/', CamerasRequest.as_view(), name='index'),
    path('cam_request/<int:request_id>/', CamerasRequestProgress.as_view()),
    path('request_result/<int:request_id>/', RequestResultView.as_view()),
    path('requests_list/', RequestsListView.as_view()),
    path('car_search/', CarSearchView.as_view(), name='search_form'),
    path('empty/', EmptyView.as_view()),
    path('faq/', FAQView.as_view()),
    path('feedback/', FeedbackView.as_view()),
    path('cars/', CarRegistryView.as_view(), name='cars'),
    path('models/<int:mark_id>/', ModelRegistryView.as_view(), name='models'),
    path('generations/<int:model_id>/', GenRegistryView.as_view(), name='generations'),
    path('car_images/<int:gen_id>/', GenPhotoView.as_view(), name='carimages'),

    path('ajax/progress/', progress),
    path('ajax/models', load_models),
    path('export/xls/<int:request_id>', export_results_xls, name='export_users_xls'),

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
