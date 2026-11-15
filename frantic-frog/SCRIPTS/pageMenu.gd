extends Control
signal _go_settings
signal _go_jogar
signal _go_amigos
signal _go_adversarios

func _on_settings_pressed() -> void:
	_go_settings.emit()
func _on_jogar_pressed() -> void:
	_go_adversarios.emit()
func _on_amigos_pressed() -> void:
	_go_amigos.emit()
func _on_adversarios_pressed() -> void:
	_go_jogar.emit()
