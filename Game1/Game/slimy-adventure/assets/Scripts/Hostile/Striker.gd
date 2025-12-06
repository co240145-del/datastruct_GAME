extends CharacterBody2D


@onready var slime: CharacterBody2D = $"../Slime"

var speed = 150
var detection_blocks = 7
var tile_size = 32
var detection_distance = detection_blocks * tile_size

func _physics_process(delta):
	var distance_to_player = position.distance_to(slime.position)

	if distance_to_player <= detection_distance:
		var dir = (slime.position - position).normalized()
		velocity = dir * speed * 1.3
		look_at(slime.position)
	else:
		velocity = Vector2.ZERO

	move_and_slide()
	
func _on_collision_with_player(body):
	if body.name == "slime":  # Ensure the collision is with the player
		print("Slime collided with the player!")
		queue_free()  # Delete the slime from the scene
