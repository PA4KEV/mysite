from django.contrib import admin

from .models import Quotee, Quote


class QuoteAdmin(admin.ModelAdmin):
    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if db_field.name == "quotee":
            # Order alphabetically instead of pk
            kwargs["queryset"] = Quotee.objects.order_by('name')
        return super(QuoteAdmin, self).formfield_for_foreignkey(db_field, request, **kwargs)


admin.site.register(Quotee)
admin.site.register(Quote, QuoteAdmin)
