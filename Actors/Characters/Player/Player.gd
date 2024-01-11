extends RigidBody2D

@onready var start_position : Vector2 = position

func takeDamage():
	PlayerState.decrement_health(1)
	GameState.respawn_player(Vector2(160, 256))
	queue_free()
	

func _on_visible_on_screen_notifier_2d_screen_exited():
	takeDamage()
