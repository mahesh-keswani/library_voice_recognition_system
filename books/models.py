from django.db import models
import csv

class Books(models.Model):
	title = models.TextField()
	count = models.IntegerField(default = 10)


