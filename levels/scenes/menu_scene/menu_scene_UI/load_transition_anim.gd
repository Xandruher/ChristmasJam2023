extends AnimationPlayer

func _ready():
	play("menu_transition")

func _on_animation_finished(anim_name):
	if anim_name == "menu_transition":
		$"../CanvasLayer/Screen/entropy_studio_intro".queue_free()
		$"../CanvasLayer/Screen/title_and_credits".queue_free()
