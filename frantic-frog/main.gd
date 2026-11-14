extends Control
class_name StateManager

@onready var state = UI_State.StartLoading
enum UI_State{
	StartLoading,
	MENU,
	SETTINGS,
	ALBUMALIADOS,
	ALBUMINIMIGOS,
	SAVE,
	LOADING,
	HUD,
	PAUSE,
	VITORIA,
	DERROTA,
}
func _ready() -> void:
	for children in get_children():
		children.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _input(event: InputEvent) -> void:
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		if state == UI_State.StartLoading:
			state = UI_State.MENU
		#elif state == UI_State.MENU:
			#state = UI_State.SETTINGS
			
	match state:
		UI_State.StartLoading: StartLoading()
		UI_State.MENU: menu()
		UI_State.SETTINGS: settings()
		

func StartLoading():
	$StartLoading.visible = true
	
func menu():
	$menu.visible = true
	
func settings():
	$settings.visible = true

func _on_button_pressed() -> void: #botao de settings
	state = UI_State.SETTINGS
