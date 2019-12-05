from django.db import models

class Student(models.Model):
	student_name = models.CharField(max_length = 50)
	book_id = models.IntegerField()
	date_issued = models.DateTimeField()