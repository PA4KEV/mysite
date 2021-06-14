from django.contrib import admin


class MyAdminSite(admin.AdminSite):
    admin.AdminSite.site_header = 'Portfolio Administration'
