@tool
extends Node2D
@export var pause : bool = false
@export var rotation_speed : float = 0.8
@onready var tile_map: TileMapLayer = $PivotPoint/TileMapLayer
@onready var pivot_point: Marker2D = $PivotPoint
@export var tile_id: int = 0

@export var reset_rotation : bool = false:
	set(new_value):
		if Engine.is_editor_hint():
			reset_rotation = new_value
			pivot_point.rotation = 0

@export var size : int = 4:
	set(new_size):
		size = new_size
		update_bar_size()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(!pause || !Engine.is_editor_hint()):
		pivot_point.rotate(rotation_speed * delta)


func update_bar_size():
	if Engine.is_editor_hint():
		if(tile_map):
			tile_map.clear()

		for i in range(size):
			var position = Vector2i(i, 0)
			tile_map.set_cell(Vector2i(i, 0), 0, Vector2i(0, 0))
