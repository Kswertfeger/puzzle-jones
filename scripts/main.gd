extends Node2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("Entered")
	$UnpressedButton.texture = preload("res://sprites/pressed_button.png")
	
	
func _on_area_2d_body_exited(body: Node2D) -> void:
	print("Exited")
	$UnpressedButton.texture = preload("res://sprites/unpressed_button.png")
