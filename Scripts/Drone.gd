extends CharacterBody2D

@export var Speed = 200
@export var TurnSpeed = 5

func _physics_process(delta):
	var input_move = Input.get_axis("drone_down", "drone_up")
	var input_turn = Input.get_axis("drone_left", "drone_right")

	velocity = transform.x * input_move * Speed
	rotation += input_turn * TurnSpeed * delta

	move_and_slide()
