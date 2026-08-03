from django.db import models

class Student(models.Model):
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    age = models.IntegerField()
    email = models.EmailField(unique=True)
    phone = models.CharField(max_length=10)
    gender = models.CharField(max_length=10)

    def __str__(self):
        return self.first_name
