# unfold_dice_logic.gd
class_name UnfoldDiceLogic

static func foldable(selected_cells: Array[Vector2i], current_try) -> bool:
	if selected_cells.size() != 6:
		return false
##########ESCALERA LLANA##########
	if current_try == 1: # ESC LL IZQ UP 2
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x - 1, y): return false
		if selected_cells[2] != Vector2i(x - 1, y - 1): return false
		if selected_cells[3] != Vector2i(x - 3, y - 2): return false
		if selected_cells[4] != Vector2i(x - 2, y - 2): return false
		if selected_cells[5] != Vector2i(x - 2, y - 1): return false
		return true
	if current_try == 2: # ESC LL DER UP 2
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x + 1, y): return false
		if selected_cells[2] != Vector2i(x + 3, y - 2): return false
		if selected_cells[3] != Vector2i(x + 1, y - 1): return false
		if selected_cells[4] != Vector2i(x + 2, y - 2): return false
		if selected_cells[5] != Vector2i(x + 2, y - 1): return false
		return true
	if current_try == 3: # ESC LL IZQ DW 2
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x - 1, y): return false
		if selected_cells[2] != Vector2i(x - 3, y + 2): return false
		if selected_cells[3] != Vector2i(x - 1, y + 1): return false
		if selected_cells[4] != Vector2i(x - 2, y + 2): return false
		if selected_cells[5] != Vector2i(x - 2, y + 1): return false
		return true
	if current_try == 4: # ESC LL DER DW 2
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x + 1, y): return false
		if selected_cells[2] != Vector2i(x + 1, y + 1): return false
		if selected_cells[3] != Vector2i(x + 3, y + 2): return false
		if selected_cells[4] != Vector2i(x + 2, y + 2): return false
		if selected_cells[5] != Vector2i(x + 2, y + 1): return false
		return true
	if current_try == 5: # ESC LL IZQ UP 3
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x - 3, y - 2): return false
		if selected_cells[2] != Vector2i(x - 1, y): return false
		if selected_cells[3] != Vector2i(x - 2, y - 2): return false
		if selected_cells[4] != Vector2i(x - 1, y - 1): return false
		if selected_cells[5] != Vector2i(x - 2, y - 1): return false
		return true
	if current_try == 6: # ESC LL DER UP 3
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x + 1, y - 1): return false
		if selected_cells[2] != Vector2i(x + 1, y): return false
		if selected_cells[3] != Vector2i(x + 2, y - 2): return false
		if selected_cells[4] != Vector2i(x + 3, y - 2): return false
		if selected_cells[5] != Vector2i(x + 2, y - 1): return false
		return true
	if current_try == 7: # ESC LL IZQ DW 3
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x - 1, y + 1): return false
		if selected_cells[2] != Vector2i(x - 1, y): return false
		if selected_cells[3] != Vector2i(x - 2, y + 2): return false
		if selected_cells[4] != Vector2i(x - 3, y + 2): return false
		if selected_cells[5] != Vector2i(x - 2, y + 1): return false
		return true
	if current_try == 8: # ESC LL DER DW 3
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x + 3, y + 2): return false
		if selected_cells[2] != Vector2i(x + 1, y): return false
		if selected_cells[3] != Vector2i(x + 2, y + 2): return false
		if selected_cells[4] != Vector2i(x + 1, y + 1): return false
		if selected_cells[5] != Vector2i(x + 2, y + 1): return false
		return true
	if current_try == 9: # ESC LL IZQ UP 4
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x - 1, y - 1): return false
		if selected_cells[2] != Vector2i(x - 2, y - 2): return false
		if selected_cells[3] != Vector2i(x - 1, y): return false
		if selected_cells[4] != Vector2i(x - 3, y - 2): return false
		if selected_cells[5] != Vector2i(x - 2, y - 1): return false
		return true
	if current_try == 10: # ESC LL DER UP 4
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x + 3, y - 2): return false
		if selected_cells[2] != Vector2i(x + 2, y - 2): return false
		if selected_cells[3] != Vector2i(x + 1, y): return false
		if selected_cells[4] != Vector2i(x + 1, y - 1): return false
		if selected_cells[5] != Vector2i(x + 2, y - 1): return false
		return true
	if current_try == 11: # ESC LL IZQ DW 4
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x - 3, y + 2): return false
		if selected_cells[2] != Vector2i(x - 2, y + 2): return false
		if selected_cells[3] != Vector2i(x - 1, y): return false
		if selected_cells[4] != Vector2i(x - 1, y + 1): return false
		if selected_cells[5] != Vector2i(x - 2, y + 1): return false
		return true
	if current_try == 12: # ESC LL DER DW 4
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false								
		if selected_cells[1] != Vector2i(x + 1, y + 1): return false
		if selected_cells[2] != Vector2i(x + 2, y + 2): return false
		if selected_cells[3] != Vector2i(x +1, y): return false
		if selected_cells[4] != Vector2i(x + 3, y + 2): return false
		if selected_cells[5] != Vector2i(x + 2, y + 1): return false
		return true
	if current_try == 13: # ESC LL IZQ UP 5
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x - 2, y - 2): return false
		if selected_cells[2] != Vector2i(x - 3, y - 2): return false
		if selected_cells[3] != Vector2i(x - 1, y - 1): return false
		if selected_cells[4] != Vector2i(x - 1, y): return false
		if selected_cells[5] != Vector2i(x - 2, y - 1): return false
		return true
	if current_try == 14: # ESC LL DER UP 5
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
	if current_try == 15: # ESC LL IZQ DW 5
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x - 2, y + 2): return false
		if selected_cells[2] != Vector2i(x - 1, y + 1): return false
		if selected_cells[3] != Vector2i(x - 3, y + 2): return false
		if selected_cells[4] != Vector2i(x - 1, y): return false
		if selected_cells[5] != Vector2i(x - 2, y + 1): return false
		return true
	if current_try == 16: # ESC LL DER DW 5
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false								
		if selected_cells[1] != Vector2i(x + 2, y + 2): return false
		if selected_cells[2] != Vector2i(x + 3, y + 2): return false
		if selected_cells[3] != Vector2i(x + 1, y + 1): return false
		if selected_cells[4] != Vector2i(x + 1, y): return false
		if selected_cells[5] != Vector2i(x + 2, y + 1): return false
		return true
	else:
		return false
