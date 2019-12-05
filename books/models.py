from django.db import models
import csv

class Books(models.Model):
	title = models.TextField()
<<<<<<< HEAD
	count = models.IntegerField(default = 10)


=======


	def __str__(self):
		return self.title
>>>>>>> 52728c6a1b545fa665e6e02a964256ea24ac16b6
