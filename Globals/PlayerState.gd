extends Node

var max_health = 3
var current_health = 3

func decrement_health(amount:int):
	current_health = current_health - amount
	print('new health: ', current_health)
