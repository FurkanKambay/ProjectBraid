extends CharacterBody2D

@export_range(0, 500) var MaxWalkSpeed = 200.0
@export_range(0, 500) var MaxRunSpeed = 400.0
@export_range(0, 1) var Accelleration = 0.8
@export_range(0, 1) var Decelleration = 0.8

@export var inventory : Inventory

@onready var sprite : Sprite2D = $Sprite2D

func _process(_delta):
	rotation = get_aim()

func _physics_process(_delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	var isRunning = Input.is_action_pressed("run")

	var targetVelocity = direction * MaxRunSpeed if isRunning else direction * MaxWalkSpeed
	var weight = Accelleration if direction else Decelleration
	velocity = velocity.lerp(targetVelocity, weight)

	move_and_slide()

func get_aim() -> float:
	var mousePosition = get_global_mouse_position()
	var direction = mousePosition - global_position
	return direction.angle()
