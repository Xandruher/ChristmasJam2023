extends Node3D


@onready var bob = $Bob
@onready var steve = $Steve

# Called when the node enters the scene tree for the first time.
func _ready():
	play_animation()
	pass # Replace with function body.

func play_animation():
	#	initial setup
	bob.being_controlled = true
	steve.being_controlled = true
	$Camera3D.current = true
	
	
	bob.set_control({
		"animation": "run",
		"end_position": Vector3(5, 1.142, 3),
		"time": 3
	})
	
	await get_tree().create_timer(3).timeout
	
	bob.set_control({"animation": "idle", "time": 5})
	
	steve.set_control({
		"animation": "run",
		"end_position": Vector3(-5, 1.142, 3),
		"time": 3
	})
	
	await get_tree().create_timer(3).timeout
	
	steve.set_control({"animation": "idle", "time": 5})


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
