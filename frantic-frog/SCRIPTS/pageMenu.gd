extends Control
signal _go_settings

func _on_button_pressed() -> void:
	emit_signal("_go_settings")
