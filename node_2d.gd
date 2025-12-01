extends Node2D

@onready var camera = $"../Camera2D"
@onready var tilemap = $TileMapLayer
@onready var ui = $"../UI"
@onready var statue_manager = $StatueManager
func _ready() -> void:
	pass

func next_turn():
	# Alternar jugador
	if tilemap.current_player_tile == 7:
		tilemap.current_player_tile = 8
		rotation = 0
		position = Vector2i(0.0, 0.0)
	else:
		tilemap.current_player_tile = 7
		rotation = 0
		position = Vector2i(0.0, 0.0)
	# 🟧 Reiniciar movimientos
	statue_manager.remaining_moves = 3
	var current_turn = tilemap.current_player_tile
	print("🌀 Posicion: ", position)
	print("🔄 Turno del jugador: ", tilemap.current_player_tile)
	ui.mostrar_turno(current_turn)
	camera.rotar_camara(current_turn)

	
