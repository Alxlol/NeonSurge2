extends Node

var max_health: int = 3
var current_health: int = 3

signal set_new_health(new_health: int)

func decrement_health(amount):
	current_health -= amount
	set_new_health.emit(current_health)
