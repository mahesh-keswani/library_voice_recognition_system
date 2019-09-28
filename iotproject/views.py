from django.shortcuts import render
from django.http import HttpResponse
from books.models import Books
import pyttsx3

engine = pyttsx3.init()

engine.setProperty('rate',150)
engine.setProperty('volume', 0.9)


def homepage(request):
	if (request.method=='POST'):
		text = request.POST['q']

		all_result = Books.objects.filter(title__icontains=text)

		if all_result:
			for result in all_result:
				print(result.title)
				# engine.say(result.title)

				# engine.run()
			return render(request,'test.html',{'results':all_result, 'input': text})
		else:
			return render(request,'test.html',{'error':'No Book Template', 'input': text})

	else :
		return render(request, 'index.html')
