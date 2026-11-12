extends Control

#comeca setando a visibilidade pra desligada. Quando jogador clica, ele vai na ordem, e move o estado para o de baixo
#e liga a visibilidade.
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

@onready var state = UI_State.StartLoading
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) and state == UI_State.StartLoading:
		$StartLoading.visible = true
