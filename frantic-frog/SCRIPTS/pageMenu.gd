extends Control
signal _go_settings

func _on_settings_pressed() -> void:
	_go_settings.emit()
