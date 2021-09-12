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
