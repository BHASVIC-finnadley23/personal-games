extends RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ready"):
		var new_parent = get_node("/Node/Main/Rocket")
		get_parent().remove_child(self)
		new_parent.add_child(self)
