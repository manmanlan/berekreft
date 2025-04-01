extends Node

signal a  # Declare the signal



func emit():
	emit_signal("a")  # Emit the signal when timer finishes
