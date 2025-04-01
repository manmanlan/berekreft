extends Node2D

const PLAST = preload("res://leo/plast.tscn")

var increasing_speed=0.9


func _on_timer_timeout() -> void:
	var plast_temp=PLAST.instantiate()
	add_child(plast_temp)
	plast_temp.speed+=increasing_speed
	increasing_speed+=0.2
	var ran = randi_range(1, 3)  # Corrected to use only two parameters

	# Using an integer value for comparison
	if ran == 1:
		plast_temp.position.y=0
	elif ran == 2:
		# Action for ran == 2
		plast_temp.position.y=140
	else:
		# Action for ran == 3
		plast_temp.position.y=-140


func _on_video_stream_player_finished() -> void:
	$"../AudioStreamPlayer3".play()
