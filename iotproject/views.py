from django.shortcuts import render
from django.http import HttpResponse
<<<<<<< HEAD
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

=======
from book.models import MyBookModel
import pandas as pd
from difflib import SequenceMatcher
import numpy as np

def homepage(request):
	if (request.method=='POST'):
		def similar(n1,n2) :
			return SequenceMatcher(None,n1,n2).ratio()
		n2 = request.POST['q']
		print(n2)
		n1 = []
		a = [] 
		n3 = []  
		books = MyBookModel.objects.all()
		for book in books:
			n1.append(book.title) 
		for i in n1 :
			a.append(similar(i,n2))
		for res in a :
			if(res>0.3):
				n3.append(res)
		text = []
		for m in n3:
			text.append(n1[a.index(m)])
		print(text)
		return render(request,'test.html',{'text':text})
>>>>>>> 9c5f15de0c6fea613c45157ebb2a873212c0e194
	else :
		return render(request, 'index.html')
