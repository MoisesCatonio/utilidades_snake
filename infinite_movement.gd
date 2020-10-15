extends Sprite


var speed = 300
var x = 0
var y = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += Vector2(x, y)
	if Input.is_action_pressed("ui_left"):
		x = -(speed * delta)
		y = 0
	elif Input.is_action_pressed("ui_right"):
		x = (speed * delta)
		y = 0
	elif Input.is_action_pressed("ui_up"):
		y = -(speed * delta)
		x = 0
	elif Input.is_action_pressed("ui_down"):
		y = (speed * delta)
		x = 0
	elif Input.is_action_pressed("ui_select"):
		y = 0
		x = 0
	pass
