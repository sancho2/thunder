extends CharacterBody2D
signal bullet_hit_player
@onready var firing_freq: Timer = $FiringFreq


@export var Bullet : PackedScene

var screensize = Vector2(400, 880)
var speed = 300

func _ready():
	$FiringFreq.wait_time = 0.75 # shooting speed for enemies
	set_physics_process(false)

func begin_firing()->void: 
	firing_freq.start()
	
func _physics_process(delta):
	pass

func shoot():
	var b = Bullet.instantiate()
	owner.add_child(b)
	b.player_hit.connect(my_bullet_hit_player)
	b.transform = $Muzzle.global_transform

func my_bullet_hit_player()->void:
	bullet_hit_player.emit()
	
func _on_firing_freq_timeout():
	# call shoot automatically
	shoot()
