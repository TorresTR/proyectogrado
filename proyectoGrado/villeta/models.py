from django.db import models

# A continuacion se mostraran las modelos que seran usados en la base de datos
class turista(models.Model):
    id_turista = models.AutoField(primary_key=True)
    nombre = models.TextField(max_length= 200)
    apellido = models.TextField(max_length= 200)
    correo = models.EmailField(max_length= 250)
    telefono = models.TextField(max_length= 50)
    edad = models.IntegerField(null=True)
    estado_civi=(('Soltero','Soltero'),('Casado','Casado'),('Union libre','UnionLibre'))
    estado_Civil = models.TextField(choices= estado_civi, default= 'Casado')
    gustos = models.TextField(max_length= 200)
    limitaciones = models.TextField(max_length= 200)
    ocupacion = models.TextField(max_length= 200)
    contrasena = models.TextField(max_length= 500)
     

class proveedor(models.Model):
    id_proveedor = models.AutoField(primary_key=True)
    nit = models.TextField(max_length= 200)
    empresa = models.TextField(max_length= 200)
    capacidad = models.TextField(max_length= 200)
    razon_social = models.TextField(max_length= 100) 
    municipio = models.TextField(max_length= 60)
    tipo_servicio = models.TextField(max_length= 190)
    direccion = models.TextField(max_length= 90)
    telefono = models.TextField(max_length= 50)
    correo = models.EmailField(max_length= 250)
    contrasena = models.TextField(max_length=70)
    imagen = models.TextField(max_length= 800)

class servicio(models.Model):
    id_servicio = models.AutoField(primary_key=True)
    nombre = models.TextField(max_length= 200)
    tipo_servicio = models.TextField(max_length= 200)
    cantidad_personas = models.IntegerField(null=True)
    precio_persona = models.FloatField(null=True)
    descripcion = models.TextField(max_length= 200)
    imagen = models.TextField(max_length= 200)
    puntiacion = models.IntegerField(null=True)
    proveedor_servicio = models.ManyToManyField(proveedor)

class comentario_Servicio(models.Model):
    id_comentario = models.AutoField(primary_key=True)
    nombre_Usuario = models.TextField(max_length= 200)
    id_servicio = models.ManyToManyField(servicio)
    comentario = models.TextField(max_length= 700)

class reserva(models.Model):
    id_reserva = models.AutoField(primary_key=True)
    fecha_inicio = models.DateTimeField(null=True)
    fecha_fin = models.DateTimeField(null=True)
    valor = models.FloatField(null=True)
    cantidad_personas = models.IntegerField(null=True)
    pago = models.TextField(max_length= 200)
    nombre_usuario = models.ForeignKey(turista, null=False, blank=False, on_delete = models.CASCADE)
    razon_social = models.TextField(max_length= 200)
    id_servicio = models.IntegerField(null=True)
    id_proveedor = models.ForeignKey(proveedor, null=False, blank=False, on_delete = models.CASCADE)

class administrador(models.Model):
    id_admin = models.AutoField(primary_key=True)
    nombre_admin = models.TextField(max_length= 200)
    contrasena = models.TextField(max_length= 200)
    correo = models.EmailField(max_length= 200)
    telefono = models.TextField(max_length= 200)
    municipio = models.TextField(max_length= 200)
    descripcion = models.TextField(max_length= 600)
    imagen = models.TextField(max_length= 800)

class contactenos(models.Model):
    id_contactenos = models.AutoField(primary_key=True)
    correo = models.EmailField(max_length= 200)
    sugerencia = models.TextField(max_length= 600)
