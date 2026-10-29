@abstract
extends Node
class_name State

var state_manager : StateManager = null

@abstract
func enter_state()

@abstract
func exit_state()

func switch(state_name: String):
	if state_manager:
		state_manager.active_state.exit_state()
		state_manager.switch_state(state_name)
		state_manager.active_state.enter_state()
	
