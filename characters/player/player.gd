extends RigidBody2D

@export var rotate_speed = 0.75
@export var thrust_speed = 700

var player_sprite = null

func _ready():
	player_sprite = $spaceship


func _process(delta):
	
	player_sprite.rotate(rotate_speed * delta)
	
	if Input.is_action_just_pressed("Rotate"):
		player_sprite.rotate(rotate_speed)
	if Input.is_action_just_pressed("Thrust"):
		var sprite_forward_vector = Vector2(0, -1).rotated(player_sprite.rotation).normalized()
		apply_central_impulse(sprite_forward_vector * thrust_speed)
