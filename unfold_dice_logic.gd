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
	if current_try == 17: # ESC EM IZQ UP 2
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x, y - 1): return false
		if selected_cells[2] != Vector2i(x - 2, y - 3): return false
		if selected_cells[3] != Vector2i(x - 1, y - 1): return false
		if selected_cells[4] != Vector2i(x - 2, y - 2): return false
		if selected_cells[5] != Vector2i(x - 1, y - 2): return false
		return true
	if current_try == 18: # ESC EM DER UP 2
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x, y - 1): return false
		if selected_cells[2] != Vector2i(x + 1, y - 1): return false
		if selected_cells[3] != Vector2i(x + 2, y - 3): return false
		if selected_cells[4] != Vector2i(x + 2, y - 2): return false
		if selected_cells[5] != Vector2i(x + 1, y - 2): return false
		return true
	if current_try == 19: # ESC EM IZQ DW 2
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x, y + 1): return false
		if selected_cells[2] != Vector2i(x - 1, y + 1): return false
		if selected_cells[3] != Vector2i(x - 2, y + 3): return false
		if selected_cells[4] != Vector2i(x - 2, y + 2): return false
		if selected_cells[5] != Vector2i(x - 1, y + 2): return false
		return true
	if current_try == 20: # ESC EM DER DW 2
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x, y + 1): return false
		if selected_cells[2] != Vector2i(x + 2, y + 3): return false
		if selected_cells[3] != Vector2i(x + 1, y + 1): return false
		if selected_cells[4] != Vector2i(x + 2, y + 2): return false
		if selected_cells[5] != Vector2i(x + 1, y + 2): return false
		return true
	if current_try == 21: # ESC EM IZQ UP 3
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x - 1, y - 1): return false
		if selected_cells[2] != Vector2i(x, y - 1): return false
		if selected_cells[3] != Vector2i(x - 2, y - 2): return false
		if selected_cells[4] != Vector2i(x - 2, y - 3): return false
		if selected_cells[5] != Vector2i(x - 1, y - 2): return false
		return true
	if current_try == 22: # ESC EM DER UP 3
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x + 2, y - 3): return false
		if selected_cells[2] != Vector2i(x, y - 1): return false
		if selected_cells[3] != Vector2i(x + 2, y - 2): return false
		if selected_cells[4] != Vector2i(x + 1, y - 1): return false
		if selected_cells[5] != Vector2i(x + 1, y - 2): return false
		return true
	if current_try == 23: # ESC EM IZQ DW 3
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x - 2, y + 3): return false
		if selected_cells[2] != Vector2i(x, y + 1): return false
		if selected_cells[3] != Vector2i(x - 2, y + 2): return false
		if selected_cells[4] != Vector2i(x - 1, y + 1): return false
		if selected_cells[5] != Vector2i(x - 1, y + 2): return false
		return true
	if current_try == 24: # ESC EM DER DW 3
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x + 1, y + 1): return false
		if selected_cells[2] != Vector2i(x, y + 1): return false
		if selected_cells[3] != Vector2i(x + 2, y + 2): return false
		if selected_cells[4] != Vector2i(x + 2, y + 3): return false
		if selected_cells[5] != Vector2i(x + 1, y + 2): return false
		return true
	if current_try == 25: # ESC EM IZQ UP 4
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x - 2, y - 3): return false
		if selected_cells[2] != Vector2i(x - 2, y - 2): return false
		if selected_cells[3] != Vector2i(x, y - 1): return false
		if selected_cells[4] != Vector2i(x - 1, y - 1): return false
		if selected_cells[5] != Vector2i(x - 1, y - 2): return false
		return true
	if current_try == 26: # ESC EM DER UP 4
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x + 1, y - 1): return false
		if selected_cells[2] != Vector2i(x + 2, y - 2): return false
		if selected_cells[3] != Vector2i(x, y - 1): return false
		if selected_cells[4] != Vector2i(x + 2, y - 3): return false
		if selected_cells[5] != Vector2i(x + 1, y - 2): return false
		return true
	if current_try == 27: # ESC EM IZQ DW 4
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x - 1, y + 1): return false
		if selected_cells[2] != Vector2i(x - 2, y + 2): return false
		if selected_cells[3] != Vector2i(x, y + 1): return false
		if selected_cells[4] != Vector2i(x - 2, y + 3): return false
		if selected_cells[5] != Vector2i(x - 1, y + 2): return false
		return true
	if current_try == 28: # ESC EM DER DW 4
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x + 2, y + 3): return false
		if selected_cells[2] != Vector2i(x + 2, y + 2): return false
		if selected_cells[3] != Vector2i(x, y + 1): return false
		if selected_cells[4] != Vector2i(x + 1, y + 1): return false
		if selected_cells[5] != Vector2i(x + 1, y + 2): return false
		return true
	if current_try == 29: # ESC EM IZQ UP 5
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x - 2, y - 2): return false
		if selected_cells[2] != Vector2i(x - 1, y - 1): return false
		if selected_cells[3] != Vector2i(x - 2, y - 3): return false
		if selected_cells[4] != Vector2i(x, y - 1): return false
		if selected_cells[5] != Vector2i(x - 1, y - 2): return false
		return true
	if current_try == 30: # ESC EM DER UP 5
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x + 2, y - 2): return false
		if selected_cells[2] != Vector2i(x + 2, y - 3): return false
		if selected_cells[3] != Vector2i(x + 1, y - 1): return false
		if selected_cells[4] != Vector2i(x, y - 1): return false
		if selected_cells[5] != Vector2i(x + 1, y - 2): return false
		return true
	if current_try == 31: # ESC EM IZQ DW 5
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x - 2, y + 2): return false
		if selected_cells[2] != Vector2i(x - 2, y + 3): return false
		if selected_cells[3] != Vector2i(x - 1, y + 1): return false
		if selected_cells[4] != Vector2i(x, y + 1): return false
		if selected_cells[5] != Vector2i(x - 1, y + 2): return false
		return true
	if current_try == 32: # ESC EM DER DW 5
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x + 2, y + 2): return false
		if selected_cells[2] != Vector2i(x + 1, y + 1): return false
		if selected_cells[3] != Vector2i(x + 2, y + 3): return false
		if selected_cells[4] != Vector2i(x, y + 1): return false
		if selected_cells[5] != Vector2i(x + 1, y + 2): return false
		return true
	if current_try == 33: # CRU ZZ DER 2
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
	if current_try == 34: # CRU ZZ DER 3
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x, y + 1): return false
		if selected_cells[2] != Vector2i(x - 1, y): return false
		if selected_cells[3] != Vector2i(x + 1, y): return false
		if selected_cells[4] != Vector2i(x, y - 1): return false
		if selected_cells[5] != Vector2i(x + 2, y): return false
		return true
	if current_try == 35: # CRU ZZ DER 4
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x, y - 1): return false
		if selected_cells[2] != Vector2i(x + 1, y): return false
		if selected_cells[3] != Vector2i(x - 1, y): return false
		if selected_cells[4] != Vector2i(x, y + 1): return false
		if selected_cells[5] != Vector2i(x + 2, y): return false
		return true
	if current_try == 36: # CRU ZZ DER 5
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x + 1, y): return false
		if selected_cells[2] != Vector2i(x, y + 1): return false
		if selected_cells[3] != Vector2i(x, y - 1): return false
		if selected_cells[4] != Vector2i(x - 1, y): return false
		if selected_cells[5] != Vector2i(x + 2, y): return false
		return true
	if current_try == 37: # CRU ZZ IZQ 2
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x + 1, y): return false
		if selected_cells[2] != Vector2i(x, y + 1): return false
		if selected_cells[3] != Vector2i(x, y - 1): return false
		if selected_cells[4] != Vector2i(x - 1, y): return false
		if selected_cells[5] != Vector2i(x - 2, y): return false
		return true
	if current_try == 38: # CRU ZZ IZQ 3
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x, y - 1): return false
		if selected_cells[2] != Vector2i(x + 1, y): return false
		if selected_cells[3] != Vector2i(x - 1, y): return false
		if selected_cells[4] != Vector2i(x, y + 1): return false
		if selected_cells[5] != Vector2i(x - 2, y): return false
		return true
	if current_try == 39: # CRU ZZ IZQ 4
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x - 1, y): return false
		if selected_cells[2] != Vector2i(x, y - 1): return false
		if selected_cells[3] != Vector2i(x, y + 1): return false
		if selected_cells[4] != Vector2i(x + 1, y): return false
		if selected_cells[5] != Vector2i(x - 2, y): return false
		return true
	if current_try == 40: # CRU ZZ IZQ 5
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x, y + 1): return false
		if selected_cells[2] != Vector2i(x - 1, y): return false
		if selected_cells[3] != Vector2i(x + 1, y): return false
		if selected_cells[4] != Vector2i(x, y - 1): return false
		if selected_cells[5] != Vector2i(x - 2, y): return false
		return true
	if current_try == 41: # CRU ZZ ARR 2
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x, y + 1): return false
		if selected_cells[2] != Vector2i(x - 1, y): return false
		if selected_cells[3] != Vector2i(x + 1, y): return false
		if selected_cells[4] != Vector2i(x, y - 1): return false
		if selected_cells[5] != Vector2i(x, y - 2): return false
		return true
	if current_try == 42: # CRU ZZ ARR 3
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x + 1, y): return false
		if selected_cells[2] != Vector2i(x, y + 1): return false
		if selected_cells[3] != Vector2i(x, y - 1): return false
		if selected_cells[4] != Vector2i(x - 1, y): return false
		if selected_cells[5] != Vector2i(x, y - 2): return false
		return true
	if current_try == 43: # CRU ZZ ARR 4
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x - 1, y): return false
		if selected_cells[2] != Vector2i(x, y - 1): return false
		if selected_cells[3] != Vector2i(x, y + 1): return false
		if selected_cells[4] != Vector2i(x + 1, y): return false
		if selected_cells[5] != Vector2i(x, y - 2): return false
		return true
	if current_try == 44: # CRU ZZ ARR 5
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x, y - 1): return false
		if selected_cells[2] != Vector2i(x + 1, y): return false
		if selected_cells[3] != Vector2i(x - 1, y): return false
		if selected_cells[4] != Vector2i(x, y + 1): return false
		if selected_cells[5] != Vector2i(x, y - 2): return false
		return true
	if current_try == 45:# CRU  ZZ ABA 2
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x, y - 1): return false
		if selected_cells[2] != Vector2i(x + 1, y): return false
		if selected_cells[3] != Vector2i(x - 1, y): return false
		if selected_cells[4] != Vector2i(x, y + 1): return false
		if selected_cells[5] != Vector2i(x, y + 2): return false
		return true
	if current_try == 46:# CRU  ZZ ABA 3
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x - 1, y): return false
		if selected_cells[2] != Vector2i(x, y - 1): return false
		if selected_cells[3] != Vector2i(x, y + 1): return false
		if selected_cells[4] != Vector2i(x + 1, y): return false
		if selected_cells[5] != Vector2i(x, y + 2): return false
		return true
	if current_try == 47:# CRU  ZZ ABA 4
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x + 1, y): return false
		if selected_cells[2] != Vector2i(x, y + 1): return false
		if selected_cells[3] != Vector2i(x, y - 1): return false
		if selected_cells[4] != Vector2i(x - 1, y): return false
		if selected_cells[5] != Vector2i(x, y + 2): return false
		return true
	if current_try == 48:# CRU  ZZ ABA 5
		var base: Vector2i = selected_cells[0]
		var x = base.x
		var y = base.y
		if selected_cells[0] != Vector2i(x, y): return false
		if selected_cells[1] != Vector2i(x, y + 1): return false
		if selected_cells[2] != Vector2i(x - 1, y): return false
		if selected_cells[3] != Vector2i(x + 1, y): return false
		if selected_cells[4] != Vector2i(x, y - 1): return false
		if selected_cells[5] != Vector2i(x, y + 2): return false
		return true
	else:
		return false
