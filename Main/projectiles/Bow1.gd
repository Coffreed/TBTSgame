extends StaticBody

var move_vec = Vector3()

const RELEASE = preload("res://Main/projectiles/Arrow.tscn")

var ArrowReloadTimer = 0
var ArrowCount = 0

func _process(delta):
	ArrowReloadTimer += 1
	if ArrowReloadTimer >= 300:
		ArrowReloadTimer = 0
		ArrowCount = 0
		
		
func _unhandled_input(event):
	if Input.is_action_just_pressed("Discharge") and ArrowCount < 1:
		ArrowCount += 1
		var release = RELEASE.instance()
		release.start($Position3D.global_transform)
		get_parent().add_child(release)
