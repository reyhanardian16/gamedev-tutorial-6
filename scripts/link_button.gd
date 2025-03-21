extends LinkButton

@export var scene_to_load = "main_menu"

func _on_pressed():
	get_tree().change_scene_to_file(str("res://scenes/" + scene_to_load + ".tscn"))
