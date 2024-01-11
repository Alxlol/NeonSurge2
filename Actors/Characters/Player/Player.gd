extends RigidBody2D

@onready var start_position : Vector2 = transform.get_origin()
@onready var stat_component : StatComponent = $StatComponent as StatComponent

func takeDamage():
	stat_component.decrement_health(1)
	GameState.respawn_player()
	queue_free()
	

func _on_visible_on_screen_notifier_2d_screen_exited():
	takeDamage()
