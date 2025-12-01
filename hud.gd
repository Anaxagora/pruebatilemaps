extends CanvasLayer

@onready var help_btn = $HelpMenuButton
@onready var sketch   = $SketchTextureRect

func _ready():
	# Conectar la señal del MenuButton
	help_btn.sketch_selected.connect(_on_sketch_selected)

	# --- CONFIGURACIÓN DEL SKETCH POR CÓDIGO ---
	# No bloquear el mouse
	sketch.mouse_filter = Control.MOUSE_FILTER_IGNORE

	# Posicionarlo en el centro-izquierda (como preset "Center Left")
	sketch.anchor_left   = 0.0
	sketch.anchor_top    = 0.5
	sketch.anchor_right  = 0.0
	sketch.anchor_bottom = 0.5

	# Posición relativa desde el anchor
	sketch.offset_left = 20      # separarlo 20px del borde izquierdo
	sketch.offset_top  = -100    # centrar vertical con leve ajuste

	# Tamaño mínimo del rectángulo donde se dibuja el croquis
	sketch.custom_minimum_size = Vector2(200, 200)

	# Ajuste visual para que el PNG no se distorsione
	sketch.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED

	# Oculto hasta que el jugador elige un croquis
	sketch.visible = false
func _on_sketch_selected(shape, direction):
	var path = "res://croquis/%s_%s.png" % [shape, direction]
	print("Cargando croquis:", path)

	var tex = load(path)

	if tex:
		sketch.texture = tex
		sketch.visible = true
		sketch.position.x = -35
		sketch.position.y = 150
	else:
		print("❌ No existe la imagen:", path)
func _unhandled_input(event):
	# Cerrar con tecla X
	if event is InputEventKey and event.pressed and event.keycode == KEY_X:
		_hide_sketch()

	# Cerrar con click derecho
	if event is InputEventMouseButton \
	and event.button_index == MOUSE_BUTTON_RIGHT \
	and event.pressed:
		_hide_sketch()


func _hide_sketch():
	sketch.visible = false
