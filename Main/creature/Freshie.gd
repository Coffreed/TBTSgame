extends KinematicBody

export var team = 0
var team_colors = {
	0: preload("res://Main/creature/Divine.tres"),
	1: preload("res://Main/creature/Hellish.tres")
}

var path = []
var path_ind = 0
var max_health = 5
var health = 5
const move_speed = 12
onready var nav = get_parent()

func _ready():
	if team in team_colors:
		$MeshInstance.material_override = team_colors[team]

func move_to(target_pos):
	path = nav.get_simple_path(global_transform.origin, target_pos)
	path_ind = 0

func _physics_process(delta):
	if path_ind < path.size():
		var move_vec = (path[path_ind] - global_transform.origin)
		if move_vec.length() < 0.1:
			path_ind += 1
		else:
			move_and_slide(move_vec.normalized() * move_speed, Vector3(0, 1, 0))

func _on_Mob_input_event(camera, event, click_position):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and emit_signal("ready"):
			health -= 1
			$HealthBar3D.update(health, max_health)
			if health <= 0:
				queue_free()

func select():
	$SelectionRing.show()
	
func deselect():
	$SelectionRing.hide()
