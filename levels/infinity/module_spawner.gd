extends Node2D

@export var scrolling_speed : float = 80

var modules : Array[PackedScene] = [
	preload("res://levels/infinity/modules/module_01.tscn"),
	preload("res://levels/infinity/modules/module_02.tscn"),
	preload("res://levels/infinity/modules/module_03.tscn"),
]

var newest_module = null

func _ready() -> void:
	randomize()
	spawn_first_module()
	spawn_module()

func spawn_module():
	var random_index = randi() % modules.size()
	var module_instance = modules[random_index].instantiate()
	if(newest_module): 
		module_instance.position.y = newest_module.get_node('spawn_point').global_position.y - 800
		module_instance.scrolling_speed = scrolling_speed
		module_instance.connect('spawn_detection', spawn_module)
		add_child(module_instance)
		newest_module = module_instance
		
	
func spawn_first_module():
	var module_instance = modules[0].instantiate()
	module_instance.position.y = -800
	module_instance.scrolling_speed = scrolling_speed
	module_instance.connect('spawn_detection', spawn_module)
	add_child(module_instance)
	newest_module = module_instance
