# Generated by Django 2.2.5 on 2019-09-19 03:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('villeta', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='comentario_servicio',
            name='id_servicio',
        ),
        migrations.AddField(
            model_name='comentario_servicio',
            name='id_servicio',
            field=models.ManyToManyField(to='villeta.servicio'),
        ),
        migrations.RemoveField(
            model_name='servicio',
            name='proveedor_servicio',
        ),
        migrations.AddField(
            model_name='servicio',
            name='proveedor_servicio',
            field=models.ManyToManyField(to='villeta.proveedor'),
        ),
    ]
