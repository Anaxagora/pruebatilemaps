extends TileMapLayer
var toca_tile_jugador = false
var max_try = 48 # (3 Formas * 4 DIRECCIONES * 4 CARAS DE INICIO)
var is_valid = false
var j = 1
var GridSizeAlto = 13
var GridSizeAncho = 23
var selected_cells: Array[Vector2i] = []
var max_tiles = 6  # cantidad de tiles en tu TileSet
var current_player_tile := 7  # empieza naranja
func _ready() -> void:
	for x in range(GridSizeAlto):
		for y in range(GridSizeAncho):
			var tile_index := 0
			# Si es la primera columna
			if y == 0:
				tile_index = 7
			# Si es la última columna
			elif y == GridSizeAncho - 1:
				tile_index = 8
			set_cell(Vector2i(x, y), tile_index, Vector2i(0,0), 0)

func _unhandled_input(event: InputEvent) -> void:
	# Click izquierdo: agregar celda seleccionada
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var mouse_pos = get_local_mouse_position()
		var cell = local_to_map(mouse_pos)
		if selected_cells.size() == 6:
			print("🀄 No se puede seleccionar mas celdas: ", selected_cells.size())
		else:	
			if get_cell_source_id(cell) == 0:
				if cell not in selected_cells:
					selected_cells.append(cell)
					print("🀄 Celda ", j, " seleccionada: ", cell)
					set_cell(cell, j, Vector2i(0, 0), 0)
					# set_cell(cell, current_player_tile, Vector2i(0, 0), 0)
					j = j + 1 
			else:
				print("🀄 No se puede seleccionar la celda: ", cell)
			# Spacebar: cambiar todas las seleccionadas
	if event is InputEventKey and event.pressed and event.keycode == KEY_SPACE:
		if selected_cells.size() < max_tiles:
			print("⚠️ Debes seleccionar 6 tiles antes de finalizar tu turno.")
			return
		if selected_cells.size() == 6:
			toca_tile_jugador = false
			for cell in selected_cells:
				#for v in [cell + Vector2i(1, 0), cell + Vector2i(-1, 0), cell + Vector2i(0, 1), cell + Vector2i(0, -1)]:
				for v in get_surrounding_cells(cell):
					if get_cell_source_id(v) == current_player_tile:
						print("✅ La celda ", cell, " está en contacto con la tile del jugador en ", v)
						toca_tile_jugador = true
						break
				if toca_tile_jugador:
					break
			# 🔸 si NO toca un tile del jugador, cancelar todo
			if not toca_tile_jugador:
				print("❌ No toca ningún tile del jugador")
				for cell in selected_cells:
					set_cell(cell, 0, Vector2i(0, 0), 0)  # limpiar visualmente
				selected_cells.clear()
				j = 1
				get_parent().next_turn()
				return  # salir del _unhandled_input completamente
			print("✅ El dado está en contacto con un tile del jugador")
# Me llevé el MAX TRY arriba
			for current_try in range(1, max_try + 1):
				is_valid = UnfoldDiceLogic.foldable(selected_cells, current_try)
				#print("Intento ", current_try, ": ", is_valid)
				if is_valid:
					for cell in selected_cells:
						set_cell(cell, current_player_tile, Vector2i(0, 0), 0)
					print("🎲 Intento ", current_try, ": ", is_valid)
					print("✅Dado desplegado correctamente")
					# 🔥 Crear estatua en la celda inicial del dado
					var spawn_cell = selected_cells[0]
					var statue_manager = get_node("../StatueManager")
					statue_manager.spawn_statue_for_player(current_player_tile, spawn_cell)
					break
				else:
					for cell in selected_cells:
						set_cell(cell, 0, Vector2i(0, 0), 0)
					#print("No se desplegó correctamente el dado")
		# limpiar selección siempre al final
			if not is_valid:
				print("❌ No se desplegó correctamente el dado")
		selected_cells.clear()
		j = 1
		get_parent().next_turn()
