extends Node2D



func _process(delta: float) -> void:
	position.x-=10


func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().reload_current_scene()
