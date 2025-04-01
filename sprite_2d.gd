extends Sprite2D

signal a  # Declare the signal

func _ready():
	print("aw")
	Global.a.connect(_on_a)  # Correct way to connect the signal in Godot 4.3



func _on_a():
	print("aaaa")
	queue_free()
