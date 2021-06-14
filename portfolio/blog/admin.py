from django.contrib import admin

from blog.models import Tag, Entry, BlogImageCard


class EntryAdmin(admin.ModelAdmin):
    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == "tags":
            # Order alphabetically instead of pk
            kwargs["queryset"] = Tag.objects.order_by('name')
        return super(EntryAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)


admin.site.register(Tag)
admin.site.register(Entry, EntryAdmin)
admin.site.register(BlogImageCard)
