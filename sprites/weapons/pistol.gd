extends ProjecteWeapon
class_name Pistol


# Called when the node enters the scene tree for the first time.
func _ready():
	super._ready()
	projectile = load("res://sprites/weapons/pistolbullet.tscn")
	anim = get_node("animator")
	anim.play("idle")
	
	IS_CONTINUOUS = false
	EQUIP_ANGLE = 90
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	super._process(delta)
	if onCooldown:
		anim.play("reload")
	elif anim.animation == "reload" && not onCooldown:
		anim.play("idle")
	pass

func shoot():
	super.shoot()
	anim.play("shoot")
