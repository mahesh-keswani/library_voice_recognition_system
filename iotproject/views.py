from django.shortcuts import render
from django.http import HttpResponse


def homepage(request):
	if (request.method=='POST'):
		text = request.POST['q']
		print(text)
		return render(request,'test.html',{'text':text})
	else :
		return render(request, 'index.html')