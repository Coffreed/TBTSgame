extends KinematicBody

var move_vec = Vector3()

const DISCHARGE = preload("res://Main/projectiles/Round.tscn")

var RoundReloadTimer = 0
var RoundCount = 0

func _process(delta):
	RoundReloadTimer += 1
	if RoundReloadTimer >= 500:
		RoundReloadTimer = 0
		RoundCount = 0
		
		
func _unhandled_input(event):
	if Input.is_action_just_pressed("Discharge") and RoundCount < 1:
		RoundCount += 1
		var discharge = DISCHARGE.instance()
		discharge.start($Position3D.global_transform)
		get_parent().add_child(discharge)
