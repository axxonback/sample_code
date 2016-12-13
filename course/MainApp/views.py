from django.shortcuts import render, render_to_response, Http404
from django.http import Http404, JsonResponse
from django.template import loader
from .models import Experience
from .models import Education
from .models import Projects
import sys



# Create your views here.
def home(request):
	return render(request, 'index1.html')

def port(request):
	try:
		menu = 'disabled'
		prs = Projects.objects.all()
	except: print(str(sys.exc_info()))
	return render(request, 'port1.html', {"prs": prs, "menu0": menu})

def edu(request):
	menu = 'disabled'
	edus = Education.objects.all().order_by('-start_date')
	return render(request, 'edu.html', {"edu": edus, "menu1": menu})

def exp(request):
	menu = 'disabled'
	jobs = Experience.objects.all().order_by('-start_date')
	return render(request, 'exp.html', {"exp": jobs, "menu2": menu})

def contacts(request):
	menu = 'disabled'
	contactss = ["Be'er-Sheva, Israel", "julia.sayapina@icloud.com", "julia.sayapina"]
	return render(request, 'contacts.html', {"contacts": contactss, "menu3": menu})

def test(request):
	test1 = [1, 2, 3, 4]
	return render(request, 'test.html', {'testing': test1})

def latest_first(request):
	"""Receives ajax-requests and handles them"""
	if request.is_ajax():
		slice = request.POST['slice']
		exp = Experience.objects.all().order_by('-start_date')
		if slice:
			exp = exp[: int(slice)]
		# print(len(jobs))
		html = loader.render_to_string('inc_jobs.html', {'exp': exp})
		data = {'html': html}
		return JsonResponse(data)

	raise Http404

# def notfound(request):
#     return render(request, '500.html')