extends Node2D

@onready var introduction_Panel: Panel = $Slime/UI/Introduction
@onready var door1: Button = $Area2D/Door1

@onready var intro: Panel = $Slime/Introduction


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	door1.visible = false
	intro.visible = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_return_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://assets/Scene/Menu/mainMenu.tscn")


func _on_button_pressed() -> void:
	intro.visible = false


func _on_door_1_pressed() -> void:
	get_tree().change_scene_to_file("res://assets/Scene/MainArea/MainArea.tscn")
