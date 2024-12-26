extends Control

var star_scroll_speed : float = 14
var rng : RandomNumberGenerator = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set_random_background_position()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$ParallaxBackground.scroll_offset.y += star_scroll_speed * delta
	pass

func set_random_background_position() -> void:
	$BG.position.x = rng.randi_range(0, -837)
	$BG.position.y = rng.randi_range(0, -780)
