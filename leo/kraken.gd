extends StaticBody2D






const PLAYER = preload("res://leo/player.tscn")
 
@export var max_health: int = 100

var current_health: int
 
@onready var bossbar: ProgressBar = null
 
func _ready():
	await $Timer.timeout
	Global.emit()
	$".".visible=true
	$AudioStreamPlayer2.play()
	$AudioStreamPlayer3.play()
	bossbar = $bossbar if has_node("bossbar") else null

	current_health = max_health
 
	if bossbar:

		bossbar.max_value = max_health

		bossbar.value = current_health
	$".".collision_layer=1
 
func take_damage(amount: int):
	if $AudioStreamPlayer:
		$AudioStreamPlayer.play()
	
	current_health -= amount
 
	if bossbar:

		bossbar.value = current_health
 
	if current_health <= 0:

		die()
	
	 


func die():
	$"../VideoStreamPlayer".play()
	$"../AudioStreamPlayer2".play()
	


	queue_free()

 
