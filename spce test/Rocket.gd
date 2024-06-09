extends RigidBody3D
@onready var Thruster = get_node("/Node3D/Thruster")
@onready var Block = get_node("/Node3D/Block")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ready"):
		pass
