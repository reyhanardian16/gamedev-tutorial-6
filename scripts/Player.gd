extends CharacterBody2D

@export var speed: int = 400
@export var GRAVITY: int = 1000
@export var jump_speed: int = -600

const UP = Vector2(0, -1)

@onready var animator = self.get_node("Animator")
@onready var sprite = self.get_node("Sprite2D")


func get_input():
	velocity.x = 0
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y = jump_speed
	if Input.is_action_pressed("right"):
		velocity.x += speed
	if Input.is_action_pressed("left"):
		velocity.x -= speed


func _physics_process(delta):
	velocity.y += delta * GRAVITY
	get_input()
	set_velocity(velocity)
	set_up_direction(UP)
	move_and_slide()
	velocity = velocity


func _process(delta):
	if velocity.y != 0:
		animator.play("Jump")
	elif velocity.x != 0:
		animator.play("Walk")
	else:
		animator.play("Idle")

	if velocity.x > 0:
		sprite.flip_h = false
	else:
		sprite.flip_h = true	
