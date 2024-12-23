class_name Player
extends RigidBody2D

@onready var start_position : Vector2 = position
@onready var rotate_component : RotateComponent = get_node('RotateComponent')
@onready var thrust_component : ThrustComponent = get_node('ThrustComponent')

func take_damage():
	PlayerState.decrement_health(1)
	PlayerState.respawn_player(Vector2(160, 256))
	queue_free()

func _on_visible_on_screen_notifier_2d_screen_exited():
	take_damage()


func _on_area_2d_area_entered(area: Area2D) -> void:
	print(area)
	if area.is_in_group('obstacle') || area.is_in_group('enemy'):
		take_damage()
	if area.is_in_group('pickup'):
		area.get_parent().queue_free()
