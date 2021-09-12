from django import template
from core.models import Cart
from core.models import OrderItem

register = template.Library()


@register.filter
def cart_item_count(user):
    if user.is_authenticated:
        qs = Cart.objects.filter(user=user, ordered=False)
        if qs.exists():
            return qs[0].items.count()
        else:
            return 0

@register.filter
def cart_item_total(user):
    if user.is_authenticated:
        qs = Cart.objects.filter(user=user, ordered=False)
        if qs.exists():
            return qs[0].get_total()
        else:
            return 0

@register.filter
def order_items(user):
    if user.is_authenticated:    
        qs = OrderItem.objects.filter(user=user, ordered=False)
        if qs.exists():
            return qs
        else:
            return None