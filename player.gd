extends CharacterBody2D

var speed = 50

func _physics_process(delta):
	var direction = Input.get_vector("walk_left", "walk_right", "walk_up", "walk_down")
	velocity = direction * speed 
	move_and_slide()
	animation_player()

func animation_player():
	# velocity[0] = x
	# velocity[1] = y
	if velocity[0] == 0.0 && velocity[1] == 0.0: # idle
		%AnimatedSprite2D.play("idle")
	elif velocity[0] > 0.0: # walking right
		%AnimatedSprite2D.play("sidewalk")
		%AnimatedSprite2D.flip_h = true
	elif velocity[0] < 0.0: # walking left
		%AnimatedSprite2D.play("sidewalk")
		%AnimatedSprite2D.flip_h = false
	elif velocity[1] > 0.0: # walking down
		%AnimatedSprite2D.play("downwalk")
	elif velocity[1] < 0.0: # walking up
		%AnimatedSprite2D.play("upwalk")
	
		
