extends Control

@onready var health_label = $Health
var current_health = PlayerState.current_health

func _ready():
	health_label.text = str(current_health)
