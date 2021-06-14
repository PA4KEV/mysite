import random

from django import template

from quotes.models import Quote

register = template.Library()


@register.simple_tag
def quote_tag():
    return random.choice(Quote.objects.all())


@register.filter
def preview_blog_post(obj):
    return obj[:60]
