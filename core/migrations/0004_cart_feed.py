# Generated by Django 3.0.7 on 2021-10-01 16:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0003_orderitem_shop'),
    ]

    operations = [
        migrations.AddField(
            model_name='cart',
            name='feed',
            field=models.BooleanField(default=False),
        ),
    ]
