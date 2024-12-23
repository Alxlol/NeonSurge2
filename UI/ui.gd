extends Control
@onready var health = $Health

func _ready():
	PlayerState.set_new_health.connect(update_health)

func update_health(new_health):
	health.text = str(new_health)

func _on_thrust_button_pressed() -> void:
	PlayerState.player_instance.thrust_component.thrust_forward()

func _on_rotate_button_pressed() -> void:
	PlayerState.player_instance.rotate_component.rotate_player()
