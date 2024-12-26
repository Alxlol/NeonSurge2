extends Node2D

@export var scrolling_speed : float = 80

var modules : Array[PackedScene] = [
	preload("res://levels/infinity/modules/module_01.tscn"),
	preload("res://levels/infinity/modules/module_02.tscn"),
	preload("res://levels/infinity/modules/module_03.tscn"),
]

var first_module : PackedScene = preload("res://levels/infinity/modules/module_00.tscn")

var last_spawned_module

func _ready() -> void:
	spawn_first_module()
	spawn_module()

func spawn_first_module():
	var module_instance = first_module.instantiate()
	module_instance.position.y = -800
	module_instance.scrolling_speed = scrolling_speed
	module_instance.connect('spawn_detection', spawn_module)
	add_child(module_instance)
	last_spawned_module = module_instance

func spawn_module():
	print('spawning new module')
	var random_index = randi() % modules.size()
	var module_instance = modules[random_index].instantiate()
	if(last_spawned_module): 
		module_instance.position.y = last_spawned_module.get_node('spawn_point').global_position.y - 800
		module_instance.scrolling_speed = scrolling_speed
		module_instance.connect('spawn_detection', spawn_module)
		add_child(module_instance)
		last_spawned_module = module_instance
		
	
