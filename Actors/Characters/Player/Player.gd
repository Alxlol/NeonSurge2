extends RigidBody2D

@onready var start_position = global_transform.origin

func death():
	global_transform.origin = start_position
