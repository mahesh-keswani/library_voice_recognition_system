from django.db import models
import csv

class Books(models.Model):
	title = models.TextField()


