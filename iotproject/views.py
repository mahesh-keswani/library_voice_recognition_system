from django.shortcuts import render
from django.http import HttpResponse
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
	else :
		return render(request, 'index.html')