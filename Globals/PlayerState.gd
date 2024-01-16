extends Node

@onready var player_class : PackedScene = preload("res://Actors/Characters/Player/Player.tscn")
var max_health: int = 3
var current_health: int = 3

signal set_new_health(new_health: int)

func decrement_health(amount):
	current_health -= amount
	set_new_health.emit(current_health)

func respawn_player(at_position:Vector2):
	var player_instance = player_class.instantiate()
	player_instance.position = Vector2(at_position)
	call_deferred('add_child', player_instance)
