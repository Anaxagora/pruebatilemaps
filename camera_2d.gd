extends Camera2D
@onready var nodo = $"../Node2D"
var target_offset: Vector2

@export var move_speed := 5.0        # Velocidad del seguimiento
@export var y_margin := 250          # Margen antes de empezar a moverse
@export var y_min := 0.0             # Límite superior
@export var y_max := 824.0           # Límite inferior

func _ready() -> void:
	offset = Vector2i(-160.0, 0.0)
	
func rotar_camara(current_turn):
	anchor_mode = Camera2D.ANCHOR_MODE_FIXED_TOP_LEFT
	print("🎥 screen center position: " , get_screen_center_position())
	if current_turn == 8:
		#offset = Vector2i(-160.0, 824.0)
		target_offset = Vector2(-160.0, 824.0)
	else:
		#offset = Vector2i(-992.0, -648.0)
		#offset = Vector2i(-160.0, 0.0)
		target_offset = Vector2(-160.0, 0.0)
	# Creamos un tween para suavizar el cambio
	var tween = get_tree().create_tween()
	tween.tween_property(self, "offset", target_offset, 0.8) # 0.8 segundos de duración
	tween.set_trans(Tween.TRANS_SINE)
	tween.set_ease(Tween.EASE_IN_OUT)
	print("🎥 Moviendo cámara hacia: ", target_offset)
	
func _process(delta):
	#print ("Delta: ", delta)
	var mouse_y = get_viewport().get_mouse_position().y
	var center_y = get_viewport_rect().size.y / 2.0
	if abs(mouse_y - center_y) > y_margin:
		var direction = sign(mouse_y - center_y)
		offset.y = clamp(offset.y + direction * move_speed, y_min, y_max)
