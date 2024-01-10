extends Area2D

func _on_body_entered(body):

	if body.name == "player":
		var tween = get_tree().create_tween()
		var tween2 = get_tree().create_tween()
		
		tween.tween_property(self, "position", position - Vector2(0,25), 1)
		tween2.tween_property(self, "modulate:a", 0, 1)
		
		tween2.tween_callback(queue_free)
