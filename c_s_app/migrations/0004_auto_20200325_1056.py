# Generated by Django 2.2.8 on 2020-03-25 10:56

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('c_s_app', '0003_auto_20200319_1718'),
    ]

    operations = [
        migrations.RenameField(
            model_name='resultdeepstream',
            old_name='probability',
            new_name='car_probability',
        ),
        migrations.AddField(
            model_name='resultdeepstream',
            name='car_generation',
            field=models.CharField(default=90, max_length=32),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='resultdeepstream',
            name='car_model',
            field=models.CharField(default=0, max_length=32),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='resultdeepstream',
            name='color_probability',
            field=models.IntegerField(default=91, validators=[django.core.validators.MinValueValidator(0), django.core.validators.MaxValueValidator(100)]),
            preserve_default=False,
        ),
    ]
