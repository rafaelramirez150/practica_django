from django.shortcuts import render
from django.db import connection
from django.views import View
from django.http import HttpResponse, JsonResponse
from callsp.models import getempdetails
import json

def showdetails(request):
    with connection.cursor() as cursor:
        cursor.callproc('getEmployeeRecords')
        results = cursor.fetchall()
    return render(request, 'index.html', {'getempdetails': results})

def showcategory(request):
    with connection.cursor() as cursor:
        cursor.callproc('getCatDetails')
        results = cursor.fetchall()
    return render(request, 'pap.html', {'product_list': results})

def GetProductview(request, category):
    if request.method=='GET':
        with connection.cursor() as cursor:
            args = [category]
            cursor.callproc('getProductDetails', args)
            products = cursor.fetchall()
            return JsonResponse({'data': list(products)})
    return HttpResponse('Error')