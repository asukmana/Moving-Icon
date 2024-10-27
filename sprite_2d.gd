extends Sprite2D

var speed = 400
var angular_speed = PI

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var timer = get_node("Timer")
	
	timer.timeout.connect(_on_timer_timeout)
	print("hello from _ready")
	
	#to change node programmatically use this
	#this is better when changing nodes name in scene window
	var button = get_node("../Button")
	button.text = "hai"
	#or this
	$"../Button".text = "hai juga"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotation += angular_speed * delta
	var velocity = Vector2.UP.rotated(rotation) * speed

	#var direction = 0
	#if Input.is_action_pressed("ui_left"):
		#direction = -1
	#if Input.is_action_pressed("ui_right"):
		#direction = 1
#
	#rotation += angular_speed * direction * delta
	#
	#var velocity = Vector2.ZERO
	#if Input.is_action_pressed("ui_up"):
		#velocity = Vector2.UP.rotated(rotation) * speed
	#if Input.is_action_pressed("ui_down"):
		#velocity = Vector2.DOWN.rotated(rotation) * speed
		
	position += velocity * delta


# Called when an instance of a class is created
func _init():
	print("hello from _init")


# Called every time the player presses a key
func _unhandled_input(event: InputEvent) -> void:
	print("hello from _unhandled_input")


func _on_button_pressed() -> void:
	set_process(not is_processing())
	
	
func _on_timer_timeout():
	visible = not visible
