# Generated by Django 3.0.7 on 2021-09-12 17:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0002_auto_20210912_1545'),
    ]

    operations = [
        migrations.AddField(
            model_name='orderitem',
            name='shop',
            field=models.IntegerField(default=1),
        ),
    ]
