extends CanvasLayer

@onready var label := $TurnoLabel

func _ready():
	# 🔹 Configuración visual inicial del Label (puede reemplazar la del editor)
	label.text = ""
	label.visible = false
	# Tamaño y posición
	#label.position = Vector2(576, 40)  # centrado aprox en un viewport de 1152x648
	label.position = Vector2(376, 204)  # centrado aprox en un viewport de 1152x648
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	label.autowrap_mode = TextServer.AUTOWRAP_WORD
	label.size = Vector2(400, 80)
	# Estilo de fuente (si no usás Theme)
	label.add_theme_font_size_override("font_size", 64)
	label.add_theme_color_override("font_color", Color.WHITE)
	# Fondo semitransparente (opcional, tipo banner)
	label.add_theme_color_override("font_outline_color", Color(0,0,0,0.7))
	label.add_theme_constant_override("outline_size", 8)

## ⚙️ Mostrar el turno
func mostrar_turno(jugador: int):
	label.visible = true
	label.modulate.a = 0
	if jugador == 7:
		label.text = "🔸 Turno del Jugador NARANJA"
		label.add_theme_color_override("font_color", Color(1.0, 0.6, 0.0)) # naranja
	else:
		label.text = "🔹 Turno del Jugador AZUL"
		label.add_theme_color_override("font_color", Color(0.3, 0.6, 1.0)) # azul
	# 🌀 Transición suave (fade in, esperar, fade out)
	var tween = get_tree().create_tween()
	tween.tween_property(label, "modulate:a", 1.0, 0.5)
	tween.tween_interval(1.0)
	tween.tween_property(label, "modulate:a", 0.0, 0.5)
	tween.tween_callback(Callable(self, "_ocultar_label"))

func _ocultar_label():
	label.visible = false
