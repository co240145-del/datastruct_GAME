extends Area2D
@onready var slime: CharacterBody2D = $"../../Slime"
@onready var panel: Panel = $"../../Slime/UI/Introduction"

func _on_area_entered(slime) -> void:
	panel.visible = false


func _on_area_exited(slime) -> void:
	panel.visible = true


func _on_button_pressed() -> void:
	pass # Replace with function body.
