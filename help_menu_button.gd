extends MenuButton

signal sketch_selected(shape, direction)

func _ready():
	var popup := get_popup()
	# Eliminar el ítem vacío automático de Godot
	if popup.item_count > 0:
		popup.remove_item(0)
	# Crear submenús para cada figura
	_add_shape_menu(popup, "Escalera Llana")
	_add_shape_menu(popup, "Escalera Empinada")
	_add_shape_menu(popup, "Cruz")


func _add_shape_menu(popup: PopupMenu, shape_name: String):
	# Nombre interno sin espacios
	var internal := shape_name.to_lower().replace(" ", "_")

	# Primero creamos el submenú real como nodo
	var submenu := PopupMenu.new()
	submenu.name = internal
	popup.add_child(submenu)

	# Luego lo linkeamos como submenú del popup principal
	popup.add_submenu_item(shape_name, internal)

	# Y agregamos las 4 direcciones
	var dirs = ["arriba", "abajo", "izquierda", "derecha"]
	for d in dirs:
		submenu.add_item(d.capitalize())
		submenu.set_item_metadata(submenu.item_count - 1, d)

	# Cuando el jugador seleccione algo…
	submenu.id_pressed.connect(
		func(idx):
			var direction = submenu.get_item_metadata(idx)
			emit_signal("sketch_selected", internal, direction)
	)
