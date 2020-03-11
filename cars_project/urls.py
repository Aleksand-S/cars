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

urlpatterns = [
    path('admin/', admin.site.urls),
    # path('index/', CamerasRequest.as_view(), name='index'),
    # # path('cam_request/', CamerasRequest.as_view(), name='cam_request'),
    # path('cam_request/<int:request_id>/', CamerasRequestProgress.as_view()),
    # path('request_result/<int:request_id>/', RequestResultView.as_view()),
    # path('requests_list/', RequestsListView.as_view()),
    # path('car_search/', CarSearchView.as_view()),
    #
    #
    # path('ajax/progress/', progress),

] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
