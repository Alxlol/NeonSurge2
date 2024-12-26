extends Node2D
@export var scrolling_speed : float = 30
var hasTriggered : bool = false
signal spawn_detection

func _process(delta: float) -> void:
	$".".position.y += scrolling_speed * delta
	if ($".".position.y >= 800):
		print('Deleting module...')
		queue_free()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if(!hasTriggered):
		if(body.is_in_group('player')):
			hasTriggered = true
			emit_signal('spawn_detection')
