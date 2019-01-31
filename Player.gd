extends KinematicBody

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var speed = 200

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _physics_process(delta):
	var direction = Vector3(0,0,0)
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_up"):
		direction.z -= 1
	if Input.is_action_pressed("ui_down"):
		direction.z += 1
	direction = direction.normalized()

#	direction = get_node("Target").MeshInstance.x
	
	move_and_slide(direction, Vector3(0,1,0))
