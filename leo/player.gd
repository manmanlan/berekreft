extends CharacterBody2D



const SPEED = 9000.0
const JUMP_VELOCITY = -400.0

var border=0

var dead=false

func _physics_process(delta: float) -> void:
	if dead:
		return
	if Input.is_action_just_pressed("down"):
		if border==-1:
			return
		velocity.y =  SPEED
		border-=1
	elif Input.is_action_just_pressed("up"):
		if border==1:
			return
		velocity.y = -1*  SPEED
		border+=1
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

func die():
	if not dead:
		$VideoStreamPlayer.play()
		$"Roblox-explosion-sound".play()
		if $"../AudioStreamPlayer":
			$"../AudioStreamPlayer".queue_free()
		if $"../hai/AudioStreamPlayer":
			$"../hai/AudioStreamPlayer".queue_free()
		dead=true
		
	



func _on_video_stream_player_finished() -> void:
	get_tree().reload_current_scene()
