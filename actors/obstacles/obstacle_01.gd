extends Node2D

@export var rotation_speed : float = 0.8
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Anchor.rotate(rotation_speed * delta)
