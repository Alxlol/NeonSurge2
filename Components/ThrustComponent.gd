class_name ThrustComponent
extends Node

@export var sprite : Sprite2D
@export var physics_body : RigidBody2D
@export var thrust_speed : float = 650
@export var thrust_animation : AnimatedSprite2D

func _process(delta):
	if Input.is_action_just_pressed("Thrust"):
		var sprite_forward_vector = Vector2(0, -1).rotated(sprite.rotation).normalized()
		physics_body.apply_central_impulse(sprite_forward_vector * thrust_speed)
		thrust_animation.play("Thrust")


func _on_thrust_animation_animation_finished():
	thrust_animation.play("Idle")
