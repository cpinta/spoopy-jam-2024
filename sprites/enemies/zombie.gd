extends Enemy
class_name Zombie

# Called when the node enters the scene tree for the first time.
func _ready():
	super._ready()
	FOLLOWS_PLAYER = true
	
	BASE_MOVEMENT_MAX_SPEED = 10
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	super._process(delta)
	pass

func _physics_process(delta):
	super._physics_process(delta)
	pass