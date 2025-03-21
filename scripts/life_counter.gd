extends HBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if global.lives < 3:
		$Heart3.visible = false
		if global.lives < 2:
			$Heart2.visible = false
	else:
		$Heart1.visible = true
		$Heart2.visible = true
		$Heart3.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
