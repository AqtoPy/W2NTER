# UI сцена (FlagUI.tscn)
extends Control

@onready var line_edit = $LineEdit
@onready var confirm_button = $ConfirmButton

signal mountain_named(name)

func _ready():
    confirm_button.connect("pressed", _on_confirm_pressed)

func _on_confirm_pressed():
    if line_edit.text.strip_edges() != "":
        emit_signal("mountain_named", line_edit.text)
        queue_free()
