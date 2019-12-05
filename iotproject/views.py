from django.shortcuts import render, redirect
from django.http import HttpResponse
from books.models import Books
from gtts import gTTS 
import os
import datetime
from student.models import Student
from django.contrib import messages

from plotly.offline import plot
from plotly.graph_objs import Scatter

language = 'en'

def homepage(request):
    book = Books.objects.all().count()
    stud = Student.objects.all().count()
    count = book*10-stud
    return render(request,'index.html',{'book': book,'stud':stud,'count':count})

def issue_book(request):
   
    if request.GET['book_id']:
        book_id = request.GET['book_id']
        book = Books.objects.filter(id = book_id)

        book_name = book[0].title.replace(' ','-')
        
        return render(request, 'issue_book.html', {'book_id': book_id, 'book_name':book_name})

def issue_this_book(request):
     if (request.method == "POST"):
        book_name = request.POST['book_name'].replace('-',' ')
        book = Books.objects.filter(title=book_name)
        student_name = request.POST['student_name']

        book_to_update = Books.objects.get(id = book[0].id)
        book_to_update.count -= 1
        book_to_update.save()

        student = Student(student_name = student_name, book_id = book[0].id, date_issued = datetime.datetime.now())
        student.save()

        messages.success(request, 'Book '+book_name+' issued successfully to ' + student_name)
        return redirect('/')

def all_books(request):
    if (request.method=='POST'):
        text = request.POST['q']
        all_result = Books.objects.filter(title__icontains=text)
        # 
        #espeak.synth("Hello darkness my old friend")
        
        if all_result:
            for result in all_result:
                print(result.title)
            myobj1 = gTTS(text=str(len(all_result)) + 'results found', lang=language, slow=False)
            myobj1.save("welcome.mp3")
            os.system("welcome.mp3")

            return render(request,'test.html',{'results':all_result, 'input':text}) 
        else:
            text = request.POST['q']
            myobj2 = gTTS(text='no book found with title' + text, lang=language, slow=False)
            myobj2.save("welcome.mp3")
            os.system("welcome.mp3")
            return render(request,'test.html',{'error':'No Book Template', 'input':text})

def history(request):
    students = Student.objects.all()
    data = []
    for student in students:
        data.append(student.book_id)
    name = {}
    book_counts = { d:data.count(d) for d in data }
    books = Books.objects.all()
    for book in books :
        if book.id in data :
            name[book.title] = [book_counts[book.id], book.id]
    return render(request, 'history.html' , {'name':name.items()})

# def graph(request):
#     a = request.GET.get('book_id', 'No book is selected')
#     students = Student.objects.all().filter(book_id = a) # filtering all students who have taken book_id = a
#     dates = []
#     # taking date from all students
#     for student in students:
#         dates.append(student.date_issued.date())
#     # storing distinct dates in a list
#     book_counts = { d:dates.count(d) for d in dates }
#     return render(request, 'graph.html', {'a': book_counts})

def graph(request):
    a = request.GET.get('book_id', 'No book is selected')
    students = Student.objects.all().filter(book_id = a) # filtering all students who have taken book_id = a
    dates = []
    # taking date from all students
    for student in students:
        dates.append(student.date_issued.date())
    # storing distinct dates in a list
    book_counts = { d:dates.count(d) for d in dates }
    # using plotly to generate graph
    x_data = list(book_counts.keys())
    y_data = list(book_counts.values())
    plot_div = plot([Scatter(x=x_data, y=y_data,
                        mode='lines', name='test',
                        opacity=0.8, marker_color='green')],
               output_type='div')
    #plt_div = plot(fig, output_type='div', include_plotlyjs=False)

    return render(request, "graph.html", context={'plot_div': plot_div})



















