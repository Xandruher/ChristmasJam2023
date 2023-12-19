extends GPUParticles2D

func _ready():
	process_material.set("emission_shape_scale", Vector3((get_viewport_rect().size.x / 1152) * 100, 0.1, 0))
	process_material.set("emission_shape_offset", Vector3((((get_viewport_rect().size.x / 1152) * 100)-100), 0, 0))
