from django.urls import path

from blog import views

app_name = 'blog'

urlpatterns = [
    path(route='<int:page>/', view=views.IndexView.as_view(), name='index'),
    path(route='about/', view=views.about_view, name='about'),
    path(route='detail/<int:pk>/', view=views.DetailView.as_view(), name='detail'),
]
