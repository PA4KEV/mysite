from django.shortcuts import render
from django.utils import timezone
from django.views import generic

from programming.models import Project


class IndexView(generic.ListView):
    template_name = 'programming/index.html'
    context_object_name = 'projects_list'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title_prefix'] = 'Project'
        return context

    def get_queryset(self):
        return Project.objects.filter(
            creation_date__lte=timezone.now()
        ).order_by('?')


class DetailView(generic.DetailView):
    model = Project
    template_name = 'programming/detail.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title_prefix'] = 'Project'
        return context

    def get_queryset(self):
        return Project.objects.filter(creation_date__lte=timezone.now())


def error_400(request, exception=None):
    return render(request, 'error_page.html',
                  {'error_code': '400',
                   'error_message': 'Bad request!'})


def error_403(request, exception=None):
    return render(request, 'error_page.html',
                  {'error_code': '403',
                   'error_message': 'Permission denied!'})


def error_404(request, exception=None):
    return render(request, 'error_page.html',
                  {'error_code': '404',
                   'error_message': 'Page not found!'})


def error_500(request, exception=None):
    return render(request, 'error_page.html',
                  {'error_code': '500',
                   'error_message': 'Server error!'})
