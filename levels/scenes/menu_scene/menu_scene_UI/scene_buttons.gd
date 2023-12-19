extends VBoxContainer

func _on_play_pressed():
	get_tree().change_scene_to_packed($"../../../../Scene_Settings/Play_Button".scene)

func _on_options_pressed():
	pass # Replace with function body.

func _on_quit_pressed():
	get_tree().quit()
