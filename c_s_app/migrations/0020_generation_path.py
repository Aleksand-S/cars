# Generated by Django 2.2.8 on 2020-04-07 09:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('c_s_app', '0019_auto_20200406_1110'),
    ]

    operations = [
        migrations.AddField(
            model_name='generation',
            name='path',
            field=models.FilePathField(null=True, path='/home/alex/cars/'),
        ),
    ]
