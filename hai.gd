extends StaticBody2D

const KRAKEN = preload("res://leo/kraken.tscn")



const PLAYER = preload("res://leo/player.tscn")
 
@export var max_health: int = 50
var current_health: int
 
@onready var bossbar: ProgressBar = null
 
func _ready():

	bossbar = $bossbar if has_node("bossbar") else null

	current_health = max_health
 
	if bossbar:

		bossbar.max_value = max_health

		bossbar.value = current_health
 
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
	
	var KRAKEN_temp=KRAKEN.instantiate()
	get_parent().add_child(KRAKEN_temp)

	queue_free()

 
