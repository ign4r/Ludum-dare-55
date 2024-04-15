extends Node2D

var array_de_wayPoints = []
var velocidadDeMovimiento = 30
var contador = 0

func _enter_tree():
		array_de_wayPoints = get_node("../..").get_child(1).get_children()
		#print(array_de_wayPoints)

func _process(delta):
	var speed = velocidadDeMovimiento * delta
	var direction = (moverse_al_waypoint() - self.global_position).normalized()
	self.position += direction * speed
	#print(moverse_al_waypoint())

func moverse_al_waypoint():
	return array_de_wayPoints[contador].global_position
	#print(wayPointActual)

func _on_Area2D_body_entered(body):
	print(body)
	contador += 1