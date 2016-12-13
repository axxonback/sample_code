from django.db import models

class Employer(models.Model):
	employer_name = models.CharField(verbose_name = "Name", max_length = 50)
	employer_site = models.URLField(verbose_name = "Site", max_length = 64, blank = True)
	employer_location = models.URLField(verbose_name = "Location", max_length = 500)

class StudyPlace(models.Model):
	stp_name = models.CharField(verbose_name = "Place of study", max_length = 80)
	stp_site = models.URLField(verbose_name = "Site", max_length = 64, blank = True)
	stp_location = models.URLField(verbose_name = "Location", max_length = 500)
		

class Experience(models.Model):
	period = models.CharField(verbose_name = "Period of work", max_length = 50)
	start_date = models.DateField(verbose_name = 'Date of start', blank = True)
	org = models.ForeignKey('Employer', verbose_name = "Employer")
	position = models.CharField(verbose_name = "Position", max_length = 30)
	duties = models.TextField(verbose_name = "Duties")
	classname = models.CharField(verbose_name = 'Class name', blank=True, max_length = 100)
	

class Education(models.Model):
	period = models.CharField(verbose_name = "Period of work", max_length = 50)
	org = models.ForeignKey('StudyPlace', verbose_name = "Place of study")
	degree = models.CharField(verbose_name = "Degree", max_length = 100)
	desc = models.TextField(verbose_name = "Duties", blank = True)
	classname = models.CharField(verbose_name = 'Class name', blank=True, max_length = 100)
	start_date = models.DateField(verbose_name = 'Date of start', blank = True)

class Projects(models.Model):
	name = models.CharField(verbose_name = 'Project name', max_length = 50)
	date = models.DateField(verbose_name = 'Production date')
	site = models.URLField(verbose_name = 'Project link')
	desc = models.TextField(verbose_name = 'Description')
	img = models.URLField(verbose_name = 'Image', null=True, blank=True)
	style = models.CharField(verbose_name = 'CSS Style #', blank = True, max_length = 10)
		

