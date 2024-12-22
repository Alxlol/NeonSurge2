class_name RotateComponent
extends Node

@export var sprite : Sprite2D
@export var rotate_speed : float = 0.8

func _physics_process(delta):
	sprite.rotate(rotate_speed * delta)
	
	if Input.is_action_just_pressed("Rotate"):
		rotate_player()


func rotate_player():
	sprite.rotate(rotate_speed)
