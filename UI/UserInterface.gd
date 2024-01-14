extends Control

@onready var health = $Health

func _ready():
	PlayerState.set_new_health.connect(update_health)

func update_health(new_health):
	health.text = str(new_health)
