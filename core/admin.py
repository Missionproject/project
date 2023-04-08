from django.contrib import admin
from django.contrib import admin
from .models import User,Profile,Medical,Ment

# Here the main six model is imported name super admin, admin, user, profile,medical appointment



models_list = [User,Profile,Medical,Ment]
admin.site.register(models_list)

# Register your models here.
