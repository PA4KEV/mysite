import os

from django.core.validators import RegexValidator
from django.db import models

from programming.storage import OverwriteStorage


class ToolCategory(models.Model):
    name = models.CharField(max_length=200,
                            null=False, blank=False)

    def __str__(self):
        return self.name


class Tool(models.Model):
    name = models.CharField(max_length=200,
                            null=False, blank=False)
    icon = models.ImageField(upload_to=os.path.join('icons', 'tools'),
                             storage=OverwriteStorage,
                             null=True, blank=True)
    category = models.ForeignKey(ToolCategory, on_delete=models.DO_NOTHING)
    link = models.URLField(null=True, blank=True)

    def __str__(self):
        return self.name


class Project(models.Model):
    name = models.CharField(max_length=200)
    subtitle = models.CharField(max_length=200, null=True, blank=True)
    short_name_validator = RegexValidator(r'^[a-zA-Z]*$', 'Only a-z and A-Z characters are allowed.')
    short_name = models.CharField(max_length=200, unique=True, validators=[short_name_validator],
                                  null=False, blank=False)
    creation_date = models.DateTimeField(verbose_name='project creation date')
    tools = models.ManyToManyField(Tool,
                                   blank=True)

    description = models.TextField(default='no description...',
                                   blank=False)

    def __str__(self):
        return self.short_name


def get_upload_path(instance, filename):
    return os.path.join('projects', f'{instance.project.short_name}', 'cards', filename)


class ProjectCard(models.Model):
    title = models.CharField(max_length=200,
                             null=False, blank=False)
    description = models.TextField(null=True, blank=True)
    project = models.ForeignKey(Project, on_delete=models.DO_NOTHING)
    image = models.ImageField(upload_to=get_upload_path,
                              null=True, blank=True)
    feature_card = models.BooleanField(verbose_name='Feature Project Card',
                                       default=False)

    def __str__(self):
        return self.title
