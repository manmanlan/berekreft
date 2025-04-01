extends Node2D

var speed=8

func _process(delta: float) -> void:
	position.x-=speed


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "hai" or body.name == "kraken":
		if body.has_method("take_damage"):
			body.take_damage(1)
			queue_free()
	else:
		body.die()
		queue_free()
