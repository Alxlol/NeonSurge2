extends Node2D

@export var scrolling_speed : float = 0.07
var modules : Array[PackedScene] = [
	preload("res://levels/infinity/modules/module_01.tscn"),
	preload("res://levels/infinity/modules/module_02.tscn"),
	preload("res://levels/infinity/modules/module_03.tscn"),
]

var index : int = 0

func spawnNewModule():
	index += 1
	var first_module = modules[0].instantiate()
	add_child(first_module)

func _ready() -> void:
	spawnNewModule()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$".".position.y += scrolling_speed
	print($".".position.y)
	if ($".".position.y >= 800):
		spawnNewModule()
		print('spawning new module')
	
	pass
