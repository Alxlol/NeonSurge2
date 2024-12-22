extends Node

@onready var player_class : PackedScene = preload("res://Actors/Characters/Player/Player.tscn")
var player_instance : Player

var max_health: int = 3
var current_health: int = 3

signal set_new_health(new_health: int)

func decrement_health(amount):
	current_health -= amount
	set_new_health.emit(current_health)

func respawn_player(position:Vector2):
	player_instance = player_class.instantiate()
	player_instance.position = Vector2(position)
	player_instance.name = "Player"
	call_deferred('add_child', player_instance)
