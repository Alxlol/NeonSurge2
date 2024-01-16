extends Node2D

const PLAYER = preload("res://Actors/Characters/Player/Player.tscn")

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		
