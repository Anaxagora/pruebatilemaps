extends Node2D

@onready var tilemap := $"../TileMapLayer"

# Texturas de estatuas
var statue_fire := preload("res://fire.png")
var statue_water := preload("res://water.png")

# Diccionario: cell → Sprite2D
var statues = {}

# --- MOVIMIENTO ---
var move_mode := false
var selected_statue: Sprite2D = null
var remaining_moves := 3


# ============================================================
#                CREAR ESTATUA AL DESPLEGAR DADO
# ============================================================
func spawn_statue_for_player(player_id: int, cell: Vector2i):
	var texture := statue_fire if player_id == 7 else statue_water

	var statue := Sprite2D.new()
	statue.texture = texture
	statue.z_index = 50
	statue.scale = Vector2(0.1, 0.1)

	# Posición sobre la celda
	var local_pos = tilemap.map_to_local(cell)
	var global_pos = tilemap.to_global(local_pos)
	statue.global_position = global_pos + Vector2(0, -10)

	get_tree().current_scene.add_child(statue)

	statues[cell] = statue

	print("🗿 Estatua creada en celda:", cell, "Jugador:", player_id)


# ============================================================
#                        INPUT GENERAL
# ============================================================
func _unhandled_input(event):

	# ===================
	# ACTIVAR MODO MOVER
	# ===================
	if event.is_action_pressed("move_statue_mode"):  # tecla E
		if remaining_moves <= 0:
			print("⛔ No quedan movimientos este turno.")
			return

		move_mode = true
		selected_statue = null
		print("\n🟦 MODO MOVER ACTIVADO")
		print("👉 Hacé click en una estatua.")
		return

	# ===================
	# CLICK PARA SELECCIONAR ESTATUA
	# ===================
	if move_mode and event is InputEventMouseButton \
	and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		_select_statue()
		return

	# ===================
	# MOVER ESTATUA CON FLECHAS
	# ===================
	if selected_statue and remaining_moves > 0:

		if event.is_action_pressed("ui_up"):
			_move_selected_statue(Vector2i(0, -1))
			return

		if event.is_action_pressed("ui_down"):
			_move_selected_statue(Vector2i(0, 1))
			return

		if event.is_action_pressed("ui_left"):
			_move_selected_statue(Vector2i(-1, 0))
			return

		if event.is_action_pressed("ui_right"):
			_move_selected_statue(Vector2i(1, 0))
			return


# ============================================================
#              SELECCIONAR ESTATUA CON CLICK
# ============================================================
func _select_statue():
	var mouse_pos = get_global_mouse_position()

	for cell in statues.keys():
		var statue = statues[cell]

		# rectángulo aproximado para click
		var rect = Rect2(statue.global_position - Vector2(16, 16), Vector2(32, 32))

		if rect.has_point(mouse_pos):
			selected_statue = statue
			move_mode = false   # listo, ya clickeó, ahora espera flecha

			print("🟩 Estatua seleccionada en:", cell)
			print("🔢 Movimientos restantes:", remaining_moves)
			return

	print("❌ No clickeaste ninguna estatua.")


# ============================================================
#                MOVER ESTATUA 1 TILE + CONSUMIR MOVIMIENTO
# ============================================================
func _move_selected_statue(direction: Vector2i):
	if not selected_statue:
		return

	# Celda actual de la estatua
	var current_cell = tilemap.local_to_map(
		tilemap.to_local(selected_statue.global_position)
	)

	# Celda destino
	var new_cell = current_cell + direction

	# ================================
	# 🔍 VALIDACIÓN 1: dentro del tablero
	# ================================
	if not tilemap.get_used_rect().has_point(new_cell):
		print("❌ Movimiento inválido: fuera del tablero.")
		selected_statue = null
		move_mode = false
		return

	# ================================
	# 🔍 VALIDACIÓN 2: la celda tiene un dado (tile != 0)
	# ================================
	var tile_id = tilemap.get_cell_source_id(new_cell)
	if tile_id == 0:
		print("❌ Movimiento inválido: esa casilla está vacía (sin dado).")
		selected_statue = null
		move_mode = false
		return

	# ================================
	# 🔍 VALIDACIÓN 3: no haya otra estatua
	# ================================
	if statues.has(new_cell):
		print("❌ Movimiento bloqueado: ya hay una estatua en esa tile.")
		selected_statue = null
		move_mode = false
		return

	# ================================
	# ✔ VALIDADO → mover estatua
	# ================================
	var local_pos = tilemap.map_to_local(new_cell)
	var global_pos = tilemap.to_global(local_pos)

	selected_statue.global_position = global_pos + Vector2(0, -10)

	# Actualizar diccionario
	statues.erase(current_cell)
	statues[new_cell] = selected_statue

	# Consumir movimiento
	remaining_moves -= 1

	print("➡ Estatua movida a:", new_cell)
	print("🔢 Movimientos restantes:", remaining_moves)

	# Fin: se requiere presionar E de nuevo
	selected_statue = null
	move_mode = false

	if remaining_moves <= 0:
		print("⛔ Se acabaron los movimientos este turno.")
