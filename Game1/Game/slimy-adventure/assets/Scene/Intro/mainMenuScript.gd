extends Control

@onready var button_manager: Control = $ButtonManager
@onready var options: Panel = $Options
@onready var credits_panel: Panel = $Options/Credits/CreditsPanel
@onready var tutorial_Panel: Panel = $Tutorial

@onready var overview_panel: Panel = $Tutorial/Overview/OverviewPanel
@onready var controls_panel: Panel = $Tutorial/Controls/ControlsPanel
@onready var hostiles_panel: Panel = $Tutorial/Hostiles/HostilesPanel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	options.visible = false
	credits_panel.visible = false
	tutorial_Panel.visible = false
	
	overview_panel.visible = false
	controls_panel.visible = false
	hostiles_panel.visible = false
	pass # Replace with function body.
	
func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://assets/Scene/Intro/Intro(caves).tscn")
	pass # Replace with function body.

func _on_exit_pressed() -> void:
	get_tree().quit()

func _on_settings_pressed() -> void:
	if options.visible == false:
		options.visible = true
		tutorial_Panel.visible = false
	else:
		options.visible = false
		credits_panel.visible = false
	pass # Replace with function body.

func _on_credits_pressed() -> void:
	if credits_panel.visible == false:
		credits_panel.visible = true
	else:
		credits_panel.visible = false

func _on_tutorial_pressed() -> void:
	if tutorial_Panel.visible == false:
			tutorial_Panel.visible = true
			options.visible = false
	else:
			tutorial_Panel.visible = false
			overview_panel.visible = false
			controls_panel.visible = false
			hostiles_panel.visible = false



#Tutorial Section
func _on_overview_pressed() -> void:
	if overview_panel.visible == false:
			overview_panel.visible = true
			controls_panel.visible = false
			hostiles_panel.visible = false
	else:
			overview_panel.visible = false


func _on_controls_pressed() -> void:
	if controls_panel.visible == false:
			overview_panel.visible = false
			controls_panel.visible = true
			hostiles_panel.visible = false
	else:
			controls_panel.visible = false


func _on_hostiles_pressed() -> void:
	if hostiles_panel.visible == false:
		overview_panel.visible = false
		controls_panel.visible = false
		hostiles_panel.visible = true
	else:
			hostiles_panel.visible = false
