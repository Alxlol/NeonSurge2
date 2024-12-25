extends Node2D
@export var scrolling_speed : float = 0.1

func _process(delta: float) -> void:
	$".".position.y += scrolling_speed
	if ($".".position.y >= 800):
		print('should delete module')
		queue_free()


func _on_area_2d_body_entered(body: Node2D) -> void:
	print(body)
	pass # Replace with function body.
