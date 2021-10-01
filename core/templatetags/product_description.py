from django import template

register = template.Library()


@register.filter(name='split')
def split(value, key):
	"""
		Returns the value turned into a list.
	"""
	return value.split(key)
register.filter('split', split)


@register.filter(name='escape')
def escape(value):
	return value.translate({ord(i): None for i in ["[","]","'","{","}"]})
register.filter('escape', escape)



@register.filter(name = "quantity")
def quantity(value,key):
	return value[key-1].quantity

register.filter('quantity',quantity)	

@register.filter(name = "shop")
def shop(value,key):
	if value[key-1].shop==1:
		return "Dolloar"

register.filter('shop',shop)	