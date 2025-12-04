extends Control

@onready var lbl_jug_n := $VBoxContainer/LabelJugadorNaranja
@onready var lbl_mov_n := $VBoxContainer/LabelMovNaranja
@onready var lbl_pts_n := $VBoxContainer/LabelPtsNaranja

@onready var lbl_jug_a := $VBoxContainer/LabelJugadorAzul
@onready var lbl_mov_a := $VBoxContainer/LabelMovAzul
@onready var lbl_pts_a := $VBoxContainer/LabelPtsAzul

var puntos = { 7: 0, 1: 0 }
var movimientos = { 7: 3, 1: 3 }
var turno_actual := 7   # 7 = Naranja / 1 = Azul

func _ready():
	_actualizar_hud()

func set_turno(jugador:int):
	turno_actual = jugador
	movimientos[jugador] = 3
	_actualizar_hud()

func set_movimientos(jugador:int, cant:int):
	movimientos[jugador] = cant
	_actualizar_hud()

func sumar_punto(jugador:int):
	puntos[jugador] += 1
	_actualizar_hud()

func _actualizar_hud():
	# ---- Naranja ----
	if turno_actual == 7:
		lbl_jug_n.text = "🔸 NARANJA"
	else:
		lbl_jug_n.text = "Naranja"
	lbl_mov_n.text = "Mov: %d/3" % movimientos[7]
	lbl_pts_n.text = "Pts: %d/2" % puntos[7]

	# ---- Azul ----
	if turno_actual == 8:
		lbl_jug_a.text = "🔹 AZUL"
	else:
		lbl_jug_a.text = "Azul"
	lbl_mov_a.text = "Mov: %d/3" % movimientos[1]
	lbl_pts_a.text = "Pts: %d/2" % puntos[1]
