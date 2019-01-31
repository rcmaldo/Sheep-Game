extends Spatial

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == 1:
		var cam = $Camera
		var from = cam.project_ray_origin(event.position)
		var to = from + cam.project_ray_normal(event.position) * 1000.0
		
		var space_state = get_world().get_direct_space_state()
		var hit = space_state.intersect_ray(from, to)
		if hit.size() != 0:
			print(hit.position)
			# note that hit will return first object (kinematic/rigidbody) that has enabled ray pickup
