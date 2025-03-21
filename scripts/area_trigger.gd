extends Area2D

@export var scene_name: String = "Level 1"


func _on_Area_Trigger_body_entered(body):
	var current_scene = get_tree().get_current_scene().get_name()
	if body.get_name() == "Player":
		print(current_scene)
		print(scene_name)
		if current_scene == scene_name:
			global.lives -=1
		if (global.lives == 0):
			global.lives = 3
			get_tree().change_scene_to_file(str("res://scenes/game_over.tscn"))
		else:
			get_tree().call_deferred("change_scene_to_file",(str("res://scenes/" + scene_name + ".tscn")))
