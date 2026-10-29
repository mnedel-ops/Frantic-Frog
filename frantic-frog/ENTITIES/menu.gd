extends State
class_name MenuState
const var name : = 
# Called when the node enters the scene tree for the first time.
func enter_state() -> void:
	print_debug("Among")

func _input(event: InputEvent) -> void:
	state_manager.switch_state(SettingsState.name)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func exit_state() -> void:
	pass
