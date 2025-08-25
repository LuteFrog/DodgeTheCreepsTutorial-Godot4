extends RigidBody2D

@export var min_speed: float = 150.0
@export var max_speed: float = 250.0

func _ready():
	var sprite = $AnimatedSprite2D
	if sprite and sprite.sprite_frames:
		var mob_types = sprite.sprite_frames.get_animation_names()
		if mob_types.size() > 0:
			sprite.animation = mob_types[randi() % mob_types.size()]
			sprite.play()  # Start the animation
	else:
		print("AnimatedSprite2D node or sprite_frames not found!")


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
