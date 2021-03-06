from django.conf.urls import url, include, handler404
from villeta.views import *

handler404 = 'villeta.views.view_404'

urlpatterns = [
    url(r'^$', index),
    url(r'^login/', login),
    url(r'^acerca_de/', acerca_de),
    url(r'^registrarse/', registrarse),
    url(r'^contactenos_user/', contactenos_user),
    url(r'^perfil/', perfil),
    url(r'^usuarios/', turista_user),
    url(r'^admon/', admon_user),
    url(r'^perfil_admin/', perfil_admin),
    url(r'^proveedores_registrados/', proveedores_registrados),
    url(r'^recomendaciones/', recomendaciones),
    url(r'^usuarios_registrados/', usuarios_registrados),
    url(r'^logout/', logout),

]
