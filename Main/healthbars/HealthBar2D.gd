extends TextureProgress

var bar_red = preload("res://Main/healthbars/barHorizontal_red.png")
var bar_green = preload("res://Main/healthbars/barHorizontal_green.png")
var bar_yellow = preload("res://Main/healthbars/barHorizontal_yellow.png")



#prevents the bar from rotating
func update_bar(amount, full):
	
	texture_progress = bar_green
	if amount < 0.75 * full:
		texture_progress = bar_yellow
	if amount < 0.45 * full:
		texture_progress = bar_red
	value = amount
	
#func _on_HealthBar2d_gui_input(event):
#	if event is InputEventMouseButton and event.preload()
#		show()
#		update_bar(value-1, 10)
