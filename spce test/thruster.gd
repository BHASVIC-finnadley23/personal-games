extends RigidBody3D
var movement = Vector3(0,0,0)
var dir_x = Vector3(0,0,0)
var dir_y = Vector3(0,0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	dir_x = get_transform().basis.x
	dir_y = get_transform().basis.y
	if Input.is_action_pressed("up"):
		apply_impulse(dir_y, Vector3(0,0.5,0))
	if Input.is_action_pressed("ready"):
		var new_parent = get_node("/Node/Main/Rocket")
		get_parent().remove_child(self)
		new_parent.add_child(self)

	
