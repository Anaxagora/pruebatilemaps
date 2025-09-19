extends TileMapLayer
var j = 1
var GridSizeAlto = 12
var GridSizeAncho = 9
var selected_cells: Array[Vector2i] = []
var max_tiles = 6  # cantidad de tiles en tu TileSet
func _ready() -> void:
	for x in GridSizeAlto:
		for y in GridSizeAncho:
			set_cell(Vector2i(x, y), 0, Vector2i(0,0), 0)

func _unhandled_input(event: InputEvent) -> void:
	# Click izquierdo: agregar celda seleccionada
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var mouse_pos = get_local_mouse_position()
		var cell = local_to_map(mouse_pos)
		if selected_cells.size() == 6:
			print("No se puede seleccionar mas celdas: ", selected_cells.size())
		else:	
			if get_cell_source_id(cell) == 0:
				if cell not in selected_cells:
					selected_cells.append(cell)
					print("Celda ", j, " seleccionada: ", cell)
					set_cell(cell, j, Vector2i(0, 0), 0) 
					j = j + 1 
			else:
				print("No se puede seleccionar la celda: ", cell)
			# Spacebar: cambiar todas las seleccionadas
	if event is InputEventKey and event.pressed and event.keycode == KEY_SPACE:
		if selected_cells.size() == 6:
			var max_try = 2
			for current_try in range(1, max_try + 1):
				var is_valid = UnfoldDiceLogic.foldable(selected_cells, current_try)
				print("Intento ", current_try, ": ", is_valid)
				if is_valid:
					for cell in selected_cells:
						set_cell(cell, 7, Vector2i(0, 0), 0)
					print("Dado desplegado correctamente")
					break
				else:
					for cell in selected_cells:
						set_cell(cell, 0, Vector2i(0, 0), 0)
					print("No se desplegó correctamente el dado")
		# limpiar selección siempre al final
			selected_cells.clear()
			j = 1
	#else:
		#print("Debes seleccionar exactamente 6 tiles")




#	if event is InputEventKey and event.pressed and event.keycode == KEY_SPACE:
#		if selected_cells.size() > 0:
			# Tomo el tile de la primera celda para decidir el incremento
#			var current_tile = get_cell_source_id(selected_cells[0])
#			var new_tile = current_tile + 1
#			for cell in selected_cells:
#				set_cell(cell, new_tile, Vector2i(0, 0), 0)
#			print("Tiles cambiadas a ID: ", new_tile)
#			# limpiar selección
#			selected_cells.clear()
