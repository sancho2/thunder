extends HBoxContainer

var heart = preload("res://assets/heart_full.png")
var life = 5

func _ready() -> void:
	print("moo")
#func _process(delta):
	#pass

func update_health():
	if life <= 0:
		print("TODO game over")
	print(get_child_count())
	for i in get_child_count():
		if life > i:
			get_child(i).set_visible(true)
		else:
			get_child(i).set_visible(false)
			print("!!")
