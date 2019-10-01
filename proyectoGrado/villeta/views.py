from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.contrib.auth.forms import * 
from .models import * 

def index(request):
    return render(request,'Base/index.html')


def login(request): 
    if request.method == 'POST':
        
        if request.POST.get('N_correo') and request.POST.get('N_contrasena'):
            

            if turista.objects.filter(correo=request.POST.get('N_correo')) and turista.objects.filter(contrasena=request.POST.get('N_contrasena')):
                return render(request, 'usuario/usuarios.html')
            elif proveedor.objects.filter(correo=request.POST.get('N_correo')) and proveedor.objects.filter(contrasena=request.POST.get('N_contrasena')):
                return render(request, 'prestador_servicios/prov_servicios.html')
            elif administrador.objects.filter(correo=request.POST.get('N_correo')) and administrador.objects.filter(contrasena=request.POST.get('N_contrasena')):
                return render(request, 'administrador/admon.html')
            else:
                return render(request,'Base/login.html')   
        else:
            return render(request,'Base/login.html')
    else:
        return render(request,'Base/login.html')

    return render(request, 'Base/login.html')


def contactenos_user (request):
        if request.method == 'POST':
            
            if request.POST.get('Correo_user_contac') and request.POST.get('sugerencia_user_contac'):
                contact = contactenos()
                contact.correo = request.POST.get('Correo_user_contac')
                contact.sugerencia = request.POST.get('sugerencia_user_contac')
                contact.save()
            else:
                return render(request, 'Base/contactenos_user.html')
        else:
            return render(request, 'Base/contactenos_user.html')
        return render(request, 'Base/contactenos_user.html')


def acerca_de(request): 
    return render(request, 'Base/acerca_de.html')


def registrarce(request):
    if request.method == 'POST':
       
            
            if request.POST.get('nombre_user') and request.POST.get('Apellido_user') and request.POST.get('Correo_user') and request.POST.get('Telefono_user') and request.POST.get('Edad_user') and request.POST.get('Estado_Civil') and request.POST.get('Contra_user') :
                
                tu=turista()
                tu.nombre = request.POST.get('nombre_user')
                tu.apellido = request.POST.get('Apellido_user')
                tu.correo = request.POST.get('Correo_user')
                tu.telefono = request.POST.get('Telefono_user')
                tu.edad = request.POST.get('Edad_user')
                tu.estado_Civil = request.POST.get('Estado_Civil')
                tu.contrasena = request.POST.get('Contra_user')

                tu.save()

                
            elif request.POST.get('lnit') and request.POST.get('lrazonsocial') and request.POST.get('lMunicipio') and request.POST.get('ltipo_servicio') and request.POST.get('lDirección') and request.POST.get('lTelefono') and request.POST.get('lCorreo') and request.POST.get('lcontrase'):

                prov=proveedor()
                prov.nit = request.POST.get('lnit')
                prov.razon_social = request.POST.get('lrazonsocial')
                prov.municipio = request.POST.get('lMunicipio')
                prov.tipo_servicio = request.POST.get('ltipo_servicio')
                prov.direccion = request.POST.get('lDirección')
                prov.telefono = request.POST.get('lTelefono')
                prov.correo = request.POST.get('lCorreo')
                prov.contrasena = request.POST.get('lcontrase')

                prov.save()
                
            else:
                return render(request, 'Base/registrarce.html')
                
    else:
        return render(request, 'Base/registrarce.html')
        
  

    return render(request, 'Base/registrarce.html')

def turista_user(request):

    return render(request, 'usuario/usuarios.html')

def proveedor_user(request):

    return render(request, 'prestador_servicios/prov_servicios.html')

def admon_user(request):

    return render(request, 'administrador/admon.html')

def view_404(request,*arg,**kwargs):
     return render(request, 'Base/404.html')