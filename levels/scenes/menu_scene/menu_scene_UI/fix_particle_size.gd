extends GPUParticles2D

var cal

func _ready():
	cal = get_viewport_rect().size.x / 2
	process_material.set("emission_shape_scale", Vector3(cal, 0, 0))
	process_material.set("emission_shape_offset", Vector3(cal, 0, 0))
	restart()

func _process(_delta):
	if (get_viewport_rect().size.x / 2) != cal:
		cal = get_viewport_rect().size.x / 2
		process_material.set("emission_shape_scale", Vector3(cal, 0, 0))
		process_material.set("emission_shape_offset", Vector3(cal, 0, 0))
		restart()
		#print("fixed particles")
