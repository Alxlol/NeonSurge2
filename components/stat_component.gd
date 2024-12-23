extends Node
class_name StatComponent

@export var max_health : int = 3
@export var current_health : int = 3

func decrement_health(amount : int):
	current_health = current_health - amount
	print(current_health)
