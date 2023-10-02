extends CharacterBody2D

@export_range(0, 500) var MaxWalkSpeed = 200.0
@export_range(0, 500) var MaxRunSpeed = 400.0
@export_range(0, 1) var Accelleration = 0.8
@export_range(0, 1) var Decelleration = 0.8
@export_range(0, 200) var StopRange = 100

var target : CharacterBody2D

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		target = null if target else %Player

	if target:
		look_at(target.global_position)

func _physics_process(_delta):
	velocity = get_movement()
	move_and_slide()

func get_movement() -> Vector2:
	if not target:
		return Vector2.ZERO

	var vector = target.global_position - global_position
	if vector.length() < StopRange:
		return Vector2.ZERO

	var direction = vector.normalized()
	var isRunning = target

	var targetVelocity = direction * MaxRunSpeed if isRunning else direction * MaxWalkSpeed
	var weight = Accelleration if direction else Decelleration
	return velocity.lerp(targetVelocity, weight)
