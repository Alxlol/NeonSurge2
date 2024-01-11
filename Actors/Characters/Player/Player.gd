extends RigidBody2D

@onready var start_position : Vector2 = transform.get_origin()
@export var max_health : int = 3

func takeDamage():
	max_health -= 1
	global_transform.origin = start_position


func _on_visible_on_screen_notifier_2d_screen_exited():
	takeDamage()
