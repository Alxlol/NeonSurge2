extends Node

var player_class : PackedScene = preload("res://Actors/Characters/Player/Player.tscn")

func respawn_player(at_position:Vector2):
	var player_instance = player_class.instantiate()
	player_instance.position = Vector2(at_position)
	add_child(player_instance)
