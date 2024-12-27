extends Node2D

@export var rotation_speed : float = 0.8
@export var size : int = 5
@onready var tile_map: TileMapLayer = $Anchor/TileMapLayer
@export var tile_id: int = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Anchor.rotate(rotation_speed * delta)
