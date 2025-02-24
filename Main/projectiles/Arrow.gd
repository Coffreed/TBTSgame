extends Area

var speed = 70
var velocity = Vector3()

onready var timer = get_node("Timer")


func _ready():
	timer.set_wait_time(3)
	timer.start()
	
func start(xform):
	transform = xform
	velocity = +transform.basis.z * speed
	
func _process(delta):
	transform.origin += velocity * delta
	
func _on_Round_body_entered(body):
	if body is StaticBody:
		queue_free()

func _on_Timer_timeout():
	queue_free()	
