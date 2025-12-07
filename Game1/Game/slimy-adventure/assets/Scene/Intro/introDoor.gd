extends Area2D

@onready var door1: Button = $Door1

func _on_body_entered(_body: PhysicsBody2D):
	door1.visible = true
	print("entered")


func _on_body_exited(_body: PhysicsBody2D):
	door1.visible = false
	print("exit")
