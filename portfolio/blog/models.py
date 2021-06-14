import os

from django.db import models


class Tag(models.Model):
    name = models.CharField(max_length=25, unique=True,
                            null=False, blank=False)
    count = 0

    def get_short_name(self):
        return self.name.replace(' ', '_').lower()

    @staticmethod
    def convert_short_name_to_full_name(short_name: str):
        return short_name.replace('_', ' ').capitalize()

    def __str__(self):
        return self.name


class Entry(models.Model):
    title = models.CharField(max_length=200, null=False, blank=False)
    creation_date = models.DateTimeField()
    content = models.TextField(default='no content')
    tags = models.ManyToManyField(Tag)

    def __str__(self):
        return self.title


def get_upload_path(instance, filename):
    return os.path.join('blogs', f'{instance.entry.creation_date}', 'cards', filename)


class BlogImageCard(models.Model):
    title = models.CharField(max_length=200,
                             null=False, blank=False)
    description = models.TextField(null=True, blank=True)
    entry = models.ForeignKey(Entry, on_delete=models.DO_NOTHING)
    image = models.ImageField(upload_to=get_upload_path,
                              null=True, blank=True)

    def __str__(self):
        return self.title
