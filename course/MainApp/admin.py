# -*- coding: utf-8 -*-

from django.contrib import admin
from .models import *

admin.site.site_header = "Julia Sayapina | Admin"
admin.site.site_title = "| Julia Sayapina"
admin.site.index_title = "Administration"

class EmployerAdmin(admin.ModelAdmin):
	list_display = ['employer_name', 'employer_site', 'employer_location']



admin.site.register(Employer, EmployerAdmin)
admin.site.register(StudyPlace)
admin.site.register(Experience)
admin.site.register(Education)
admin.site.register(Projects)