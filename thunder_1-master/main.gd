extends Node2D
@onready var player: CharacterBody2D = $Player
@onready var enemy: CharacterBody2D = $Enemy
@onready var heart_bar: HBoxContainer = $HeartBar


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.

func _on_button_pressed() -> void:
	player.set_physics_process(true)
	enemy.set_physics_process(true)
	enemy.begin_firing()
	#enemy
	pass # Replace with function body.


func _on_enemy_bullet_hit_player() -> void:
	heart_bar.update_health()
	pass # Replace with function body.
