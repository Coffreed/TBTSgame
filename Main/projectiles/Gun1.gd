extends KinematicBody

var move_vec = Vector3()

const FIREBALL = preload("res://Main/projectiles/Round.tscn")

var RoundReloadTimer = 0
var RoundCount = 0

func _process(delta):
	RoundReloadTimer += 1
	if RoundReloadTimer >= 100:
		RoundReloadTimer = 0
		RoundCount = 0
		
		
func _unhandled_input(event):
	if Input.is_action_just_pressed("Discharge") and RoundCount < 2:
		var fireball = FIREBALL.instance()
		fireball.start($Position3D.global_transform)
		get_parent().add_child(fireball)
