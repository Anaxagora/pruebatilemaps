# unfold_dice_logic.gd
class_name UnfoldDiceLogic

static func foldable(selected_cells: Array[Vector2i], current_try) -> bool:
	if selected_cells.size() != 6:
		return false
	if current_try == 1:# Validaciones de forma
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x - 1, y): return false
		if selected_cells[2] != Vector2i(x, y - 1): return false
		if selected_cells[3] != Vector2i(x, y + 1): return false
		if selected_cells[4] != Vector2i(x + 1, y): return false
		if selected_cells[5] != Vector2i(x + 2, y): return false
		return true
	if current_try == 2:# Validaciones de forma
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x + 2, y - 2): return false
		if selected_cells[2] != Vector2i(x + 1, y - 1): return false
		if selected_cells[3] != Vector2i(x + 3, y - 2): return false
		if selected_cells[4] != Vector2i(x + 1, y): return false
		if selected_cells[5] != Vector2i(x + 2, y - 1): return false
		return true
	else:
		return false
