extends CharacterBody2D

var speed = 50

func _physics_process(delta):
	var direction = Input.get_vector("walk_left", "walk_right", "walk_up", "walk_down")
	velocity = direction * speed
	move_and_slide()
