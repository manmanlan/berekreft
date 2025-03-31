extends Node2D

var speed=8

func _process(delta: float) -> void:
	position.x-=speed


func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().reload_current_scene()
