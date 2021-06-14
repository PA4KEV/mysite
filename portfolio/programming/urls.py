from django.urls import path

from programming import views

app_name = 'programming'

urlpatterns = [
    path(route='', view=views.IndexView.as_view(), name='index'),
    path(route='<int:pk>/', view=views.DetailView.as_view(), name='detail'),
]


