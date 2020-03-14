extends KinematicBody


var speed = 2
var max_health = 5
var health = 5
var velocity

func start(xform):
	transform.origin = xform.origin
	velocity = xform.basis.x * speed
	velocity = velocity.rotated(Vector3.UP, rand_range(1, 1))
	
func _physics_process(delta):
	velocity.y -= 1
	velocity = move_and_slide(velocity)
	if transform.origin.y < -50:
		queue_free()

func _on_Mob_input_event(camera, event, click_position):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and emit_signal("ready"):
			health -= 1
			$HealthBar3D.update(health, max_health)
			if health <= 0:
				queue_free()
