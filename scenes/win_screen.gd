extends Sprite2D

var time_elapsed = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	time_elapsed += 1
	if time_elapsed == 500:
		get_tree().change_scene_to_file(str("res://scenes/main_menu.tscn"))
