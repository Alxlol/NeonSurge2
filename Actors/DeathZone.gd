extends Node2D



func _on_area_2d_body_exited(body):
	print(body)
	if body == "res://Actors/Characters/Player/Player.tscn":
		print('hello')
