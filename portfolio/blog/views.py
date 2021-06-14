from datetime import date
import math

from django.shortcuts import render
from django.utils import timezone
from django.views import generic

from blog.models import Entry, Tag


class IndexView(generic.ListView):
    template_name = 'blog/index.html'
    context_object_name = 'entry_list'

    entries_per_page = 8

    def __init__(self):
        self.tag = None

    def setup(self, request, *args, **kwargs):
        setup = super().setup(request, *args, **kwargs)
        if request.GET.get('tag'):
            found_tag = Tag.objects.filter(name=Tag.convert_short_name_to_full_name(request.GET.get('tag')))
            if found_tag:
                self.tag = found_tag[0]

        return setup

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        total_entries = Entry.objects.filter().count()
        total_pages = int(math.ceil(total_entries / IndexView.entries_per_page))
        current_page = int(self.kwargs['page'])
        context['title_prefix'] = 'Blog'
        context['prev_previous_page'] = current_page - 2
        context['previous_page'] = current_page - 1
        context['current_page'] = self.kwargs['page']
        context['next_page'] = current_page + 1
        context['next_next_page'] = current_page + 2
        context['total_pages'] = total_pages
        context['total_pages_min_one'] = total_pages - 1
        context['total_pages_range'] = range(1, total_pages + 1)
        context['starting_pages'] = range(current_page, current_page + 3)
        context['ending_pages'] = range(total_pages - 2, total_pages + 1)
        if self.tag:
            context['current_tag'] = f'{Tag.convert_short_name_to_full_name(self.tag.name)}'
        context['all_tags'] = Tag.objects.all()
        for tag in context['all_tags']:
            tag.count = Entry.objects.filter(creation_date__lte=timezone.now(), tags__id__exact=tag.id).count
        return context

    def get_queryset(self):
        current_page = self.kwargs['page'] - 1 if self.kwargs['page'] > 0 else 0
        pag_start = current_page * IndexView.entries_per_page
        pag_end = current_page * IndexView.entries_per_page + IndexView.entries_per_page

        if not self.tag:
            return Entry.objects.filter(
                creation_date__lte=timezone.now()
            ).order_by('-creation_date')[pag_start:pag_end]
        else:
            return Entry.objects.filter(
                creation_date__lte=timezone.now(),
                tags__id__exact=self.tag.id
            ).order_by('-creation_date')[pag_start:pag_end]


class DetailView(generic.DetailView):
    model = Entry
    template_name = 'blog/detail.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title_prefix'] = 'Blog'
        return context

    def get_queryset(self):
        return Entry.objects.filter(creation_date__lte=timezone.now())


def about_view(request):
    today = date.today()
    context = {
        'my_current_age': f'{today.year - 1987 - ((today.month, today.day) < (6, 8))}',
        'title_prefix': 'About',
    }
    return render(request, 'blog/about.html', context=context)
