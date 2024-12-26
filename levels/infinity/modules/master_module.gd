extends Node2D
@export var scrolling_speed : float = 30
signal spawn_detection

func _process(delta: float) -> void:
	$".".position.y += scrolling_speed * delta
	if ($".".position.y >= 800):
		print('Deleting module...')
		queue_free()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if(body.is_in_group('player')):
		emit_signal('spawn_detection')
