extends RigidBody2D

export var min_speed = 150
export var max_speed = 250
var mob_types = ["walk", "swim", "fly"]

func _ready():
    # `randi() % n` is the standard way to get a random integer between 0 and n-1
    $AnimatedSprite.animation = mob_types[randi() % mob_types.size()]

func _on_Visibility_screen_exited():
    queue_free()

func _on_start_game():
    queue_free()
