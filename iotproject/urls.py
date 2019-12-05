"""iotproject URL Configuration

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
from . import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.homepage, name="homepage"),
    path('all_books', views.all_books, name="all_books"),
    
    path('issuebook/', views.issue_book, name="issuebook"),
    path('issuebook/issuethisbook', views.issue_this_book, name="issuethisbook"),
    path('history/',views.history, name="history"),
    path('graph/',views.graph, name="graph"),
    #path('{}', views.voice, name="voice"),
]
