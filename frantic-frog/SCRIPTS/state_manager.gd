extends Node
class_name StateManager

var active_state : State = null
@export var states_array : Array[State] = []
var state_name_dictionary : Dictionary[String, State] = {}

func _ready() -> void:
	for state in states_array:
		state.state_manager = self
		state_name_dictionary[state.name] = state
	active_state = states_array[0]
	active_state.enter_state()

func switch_state(state: String):
	print_debug("De ", active_state)
	active_state = state_name_dictionary[state]
	print_debug("Para ", active_state)
