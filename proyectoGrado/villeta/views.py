from django.http import HttpResponse, HttpResponseRedirect, JsonResponse
from django.shortcuts import render, redirect
from django.core import serializers
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import authentication, permissions
from django.contrib import messages
from django.contrib.auth.forms import *
from django.contrib.auth import *
from django.template import loader
from django.forms.models import model_to_dict
import json
from .models import *


def index(request):
    return render(request, 'Base/index.html')


def login(request):

    if request.method == 'POST':
        if request.POST.get('N_correo') and request.POST.get('N_contrasena'):
            if turista.objects.filter(correo=request.POST.get('N_correo')) and turista.objects.filter(contrasena=request.POST.get('N_contrasena')):
                response = HttpResponseRedirect('/usuarios/')
                response.set_cookie(
                    'token', request.POST.get('csrfmiddlewaretoken'))
                response.set_cookie('correo', request.POST.get('N_correo'))
                return response

            elif proveedor.objects.filter(correo=request.POST.get('N_correo')) and proveedor.objects.filter(contrasena=request.POST.get('N_contrasena')):
                return render(request, 'prestador_servicios/prov_servicios.html')
            elif administrador.objects.filter(correo=request.POST.get('N_correo')) and administrador.objects.filter(contrasena=request.POST.get('N_contrasena')):
                response = HttpResponseRedirect('/admon/')
                response.set_cookie(
                    'token', request.POST.get('csrfmiddlewaretoken'))
                response.set_cookie('correo', request.POST.get('N_correo'))
                return response
            else:
                mensaje = 'Usuario o contraseña incorrecto'
                return render(request, 'Base/login.html', {'message': mensaje})
        else:
            mensaje = 'Usuario o contraseña incorrecto'
            return render(request, 'Base/login.html', {'message': mensaje})
    else:
        return render(request, 'Base/login.html')

    return render(request, 'Base/login.html')


def contactenos_user(request):

    if request.method == 'POST':
        if request.POST.get('Correo_user_contac') and request.POST.get('sugerencia_user_contac'):
            contact = contactenos()
            contact.correo = request.POST.get('Correo_user_contac')
            contact.sugerencia = request.POST.get('sugerencia_user_contac')
            contact.save()

            mensaje = "Su peticion se envio correctamente"
            return render(request, 'Base/contactenos_user.html', {'message_succes': mensaje})
        else:
            mensaje = "No se pudo enviar su solicitud por favor intentelo mas tarde"
            return render(request, 'Base/contactenos_user.html', {'message': mensaje})
    else:
        return render(request, 'Base/contactenos_user.html')

    return render(request, 'Base/contactenos_user.html')


def acerca_de(request):
    return render(request, 'Base/acerca_de.html')


def registrarse(request):
    if request.method == 'POST':

        if request.POST.get('nombre_user') and request.POST.get('Apellido_user') and request.POST.get('Correo_user') and request.POST.get('Telefono_user') and request.POST.get('Edad_user') and request.POST.get('Estado_Civil') and request.POST.get('Contra_user'):

            correo_user = request.POST.get('Correo_user')
            turis = turista.objects.filter(correo=correo_user).exists()

            print(turis)
            if turis == False:
                tu = turista()
                tu.nombre = request.POST.get('nombre_user')
                tu.apellido = request.POST.get('Apellido_user')
                tu.correo = request.POST.get('Correo_user')
                tu.telefono = request.POST.get('Telefono_user')
                tu.edad = request.POST.get('Edad_user')
                tu.estado_Civil = request.POST.get('Estado_Civil')
                tu.contrasena = request.POST.get('Contra_user')

                tu.save()

                mensaje = 'Usuario Registrado con exito'
                return render(request, 'Base/registrarce.html', {'message_succes': mensaje})
            elif turis == True:
                mensaje = 'El Usuario ya existe en el sistema'
                return render(request, 'Base/registrarce.html', {'message': mensaje})

        elif request.POST.get('lnit') and request.POST.get('empre') and request.POST.get('capac') and request.POST.get('lrazonsocial') and request.POST.get('lMunicipio') and request.POST.get('ltipo_servicio') and request.POST.get('lDirección') and request.POST.get('lTelefono') and request.POST.get('lCorreo') and request.POST.get('lcontrase'):

            lcorreo = request.POST.get('lCorreo')
            prove = proveedor.objects.filter(correo=lcorreo).exists()
            if prove == False:
                prov = proveedor()
                prov.nit = request.POST.get('lnit')
                prov.empresa = request.POST.get('empre')
                prov.capacidad = request.POST.get('capac')
                prov.razon_social = request.POST.get('lrazonsocial')
                prov.municipio = request.POST.get('lMunicipio')
                prov.tipo_servicio = request.POST.get('ltipo_servicio')
                prov.direccion = request.POST.get('lDirección')
                prov.telefono = request.POST.get('lTelefono')
                prov.correo = request.POST.get('lCorreo')
                prov.contrasena = request.POST.get('lcontrase')

                prov.save()

                mensaje = 'Proveedor Registrado con exito'
                return render(request, 'Base/registrarce.html', {'message_succes': mensaje})

            elif prove == True:
                mensaje = 'El proveedor ya existe en el sistema'
                return render(request, 'Base/registrarce.html', {'message': mensaje})

        else:
            mensaje = 'No se pudo registrar ah ocurrido un error'
            return render(request, 'Base/registrarce.html', {'message': mensaje})

    else:
        return render(request, 'Base/registrarce.html')

    return render(request, 'Base/registrarce.html')


def turista_user(request):
    if request.COOKIES.get('token'):
        return render(request, 'usuario/usuarios.html')
    else:
        return HttpResponseRedirect('/login/')
    return HttpResponseRedirect('/login/')


def proveedor_user(request):

    return render(request, 'prestador_servicios/prov_servicios.html')


def admon_user(request):
    if request.COOKIES.get('token'):
        return render(request, 'administrador/admon.html')
    else:
        return HttpResponseRedirect('/login/')
    return HttpResponseRedirect('/login/')


def view_404(request, *arg, **kwargs):
    return render(request, 'Base/404.html')


def perfil(request):
    if request.COOKIES.get('token'):
        correo_user = request.COOKIES.get('correo')
        if request.method == 'POST':
            if request.POST.get('nombre_user') and request.POST.get('Apellido_user') and request.POST.get('Correo_user') and request.POST.get('Telefono_user') and request.POST.get('Edad_user') and request.POST.get('Estado_Civil'):

                tu = turista.objects.get(correo=correo_user)
                tu.nombre = request.POST.get('nombre_user')
                tu.apellido = request.POST.get('Apellido_user')
                tu.correo = request.POST.get('Correo_user')
                tu.telefono = request.POST.get('Telefono_user')
                tu.edad = request.POST.get('Edad_user')
                tu.estado_Civil = request.POST.get('Estado_Civil')

                tu.save()

                query = turista.objects.filter(correo=correo_user)
                mensaje = 'Usuario actualizado con exito'
                return render(request, 'usuario/perfil.html', {'query_user': query, 'message_succes': mensaje})
            else:
                query = turista.objects.filter(correo=correo_user)
                mensaje = 'No se pudo cargar la informacion del perfil'
                return render(request, 'usuario/perfil.html', {'query_user': query, 'message': mensaje})
        else:

            query = turista.objects.filter(correo=correo_user)
            return render(request, 'usuario/perfil.html', {'query_user': query})

    else:
        return HttpResponseRedirect('/login/')
    return HttpResponseRedirect('/login/')


def logout(request):
    if request.COOKIES.get('token'):
        response = render(request, 'Base/index.html')
        response.delete_cookie('token')
        response.delete_cookie('correo')
        return response
        return HttpResponseRedirect('/')

    return HttpResponseRedirect('/')


def perfil_admin(request):
    if request.COOKIES.get('token'):
        correo_ad = request.COOKIES.get('correo')
        if request.method == 'POST':
            if request.POST.get('nombre_admin') and request.POST.get('contrasena_admin') and request.POST.get('correo_admin') and request.POST.get('telefono_admin') and request.POST.get('municipio_admin') and request.POST.get('descripcion_admin') and request.POST.get('imagen_admin'):

                ad = administrador.objects.get(correo=correo_ad)
                ad.nombre_admin = request.POST.get('nombre_admin')
                ad.contrasena = request.POST.get('contrasena_admin')
                ad.correo = request.POST.get('correo_admin')
                ad.telefono = request.POST.get('telefono_admin')
                ad.municipio = request.POST.get('municipio_admin')
                ad.descripcion = request.POST.get('descripcion_admin')
                ad.imagen = request.POST.get('imagen_admin')

                ad.save()

                query = administrador.objects.filter(correo=correo_ad)
                mensaje = 'Usuario actualizado con exito'
                return render(request, 'administrador/perfil_admin.html', {'query_user': query, 'message_succes': mensaje})
            else:
                query = administrador.objects.filter(correo=correo_ad)
                mensaje = 'No se pudo cargar la informacion del perfil'
                return render(request, 'administrador/perfil_admin.html', {'query_user': query, 'message': mensaje})
        else:

            query = administrador.objects.filter(correo=correo_ad)
            return render(request, 'administrador/perfil_admin.html', {'query_user': query})

    else:
        return HttpResponseRedirect('/login/')
    return HttpResponseRedirect('/login/')


def proveedores_registrados(request):
    if request.COOKIES.get('token'):
        return render(request, 'administrador/proveedores_registrados.html')
    else:
        return HttpResponseRedirect('/login/')
    return HttpResponseRedirect('/login/')


def recomendaciones(request):
    if request.COOKIES.get('token'):
        return render(request, 'administrador/recomendaciones.html')
    else:
        return HttpResponseRedirect('/login/')
    return HttpResponseRedirect('/login/')


def usuarios_registrados(request):

    if request.COOKIES.get('token'):

        return render(request, 'administrador/usuarios_registrados.html')

    else:
        return HttpResponseRedirect('/login/')

    return HttpResponseRedirect('/login/')


class chartData(APIView):

    authentication_classes = []
    permission_classes = []

    def get(self, request, format=None):
        """usernames = [user.username for user in User.objects.all()]"""
        dt_turista = turista.objects.all().count()
        dt_proveedor = proveedor.objects.all().count()
        labels = ['Turistas Registrados', 'Proveedores Registrados']
        default_items = [dt_turista, dt_proveedor]
        data = {
            "labels": labels,
            "default": default_items,
        }
        return Response(data)


class userdataadmin(APIView):

    authentication_classes = []
    permission_classes = []

    def get(self, request, format=None):
        """usernames = [user.username for user in User.objects.all()]"""

        dt = [model_to_dict(turista) for turista in turista.objects.all()]
        data = {
            "usuarios": dt,
        }
        return Response(data)


class proveedorAdmin(APIView):

    authentication_classes = []
    permission_classes = []

    def get(self, request, format=None):
        """usernames = [user.username for user in User.objects.all()]"""
        dt = [model_to_dict(proveedor)
              for proveedor in proveedor.objects.all()]
        data = {
            "proveedor": dt
        }
        return JsonResponse(data)
