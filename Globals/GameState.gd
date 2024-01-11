extends Node

var player_scene : PackedScene = preload("res://Actors/Characters/Player/Player.tscn")
var starting_position : Vector2 = Vector2(160, 256)

func respawn_player(): 
	var player_instance = player_scene.instantiate()
	player_instance.position = Vector2(starting_position)
	add_child(player_instance)
	print(player_instance)
