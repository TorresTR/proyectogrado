"""proyectoGrado URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.conf.urls import url, include, handler404
from django.contrib.auth import views as auth_views
from villeta import views as user_views

handler404='villeta.views.view_404'

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^', include('villeta.urls'), name='home'),
    url(r'^login/', auth_views.LoginView.as_view(template_name = 'Base/login.html'), name='login'),
    url(r'^logout/', auth_views.LogoutView.as_view(template_name = 'Base/logout.html'), name='logout'),
    url(r'^acerca_de/', include('villeta.urls')),
    url(r'^contactenos_user/', include('villeta.urls')),
    url(r'^registrarse/', user_views.registrarse, name='registrarse'),
    url(r'^perfil/', include('villeta.urls')),
    url(r'^usuarios/', include('villeta.urls')),
    url(r'^admon/', include('villeta.urls')),
    url(r'^perfil_admin/', include('villeta.urls')),
    url(r'^proveedores_registrados/', include('villeta.urls')),
    url(r'^recomendaciones/', include('villeta.urls')),
    url(r'^usuarios_registrados/', include('villeta.urls')),
    url(r'^api/chart/data/$', user_views.chartData.as_view()),
    url(r'^api/user/data/admon/$', user_views.userdataadmin.as_view()),
    url(r'^api/proveedor/data/admon/$', user_views.proveedorAdmin.as_view()),
    url(r'^logout/', user_views.logout, name='logout'),
]
