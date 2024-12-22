extends Control
@onready var health = $Health
@export var player: NodePath

func _ready():
	PlayerState.set_new_health.connect(update_health)

func update_health(new_health):
	health.text = str(new_health)

func _on_button_pressed() -> void:
	var player = get_node(player)
	if player:
		var rotate_component = player.get_node("RotateComponent") as RotateComponent
		if rotate_component:
			rotate_component.sprite.rotate(rotate_component.rotate_speed)
		else:
			print("RotateComponent not found in Player")
	else:
		print("Player not found")
