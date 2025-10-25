extends Node2D

var car_scene: PackedScene = preload("res://scenes/cars/car.tscn")

func _on_finish_area_2d_body_entered(body: Node2D) -> void:
	print(body)
	print("has entered")


func _on_car_timer_timeout() -> void:
	var car: Area2D = car_scene.instantiate()
	var pos_marker: Marker2D = $CarStartPositions.get_children().pick_random()
	car.position = pos_marker.position
	$Objects/Cars.add_child(car)
