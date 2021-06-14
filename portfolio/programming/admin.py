from django.contrib import admin

from .models import Project, ProjectCard, Tool, ToolCategory


class ProjectAdmin(admin.ModelAdmin):
    fieldsets = [
        ('Basic info',          {'fields': ['name', 'subtitle', 'short_name', 'creation_date']}),
        ('Used Tools',          {'fields': ['tools']}),
        ('Project Description', {'fields': ['description']}),
    ]

    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == "tools":
            # Order alphabetically instead of pk
            kwargs["queryset"] = Tool.objects.order_by('name')
        return super(ProjectAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)


admin.site.register(Project, ProjectAdmin)
admin.site.register(ProjectCard)
admin.site.register(Tool)
admin.site.register(ToolCategory)
