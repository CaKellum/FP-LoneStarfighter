extends KinematicBody2D

signal destroyed

var direction := 1

onready var start_pos := position

func _process(_delta:float)->void:
	position.x +=2*direction
	if position.x>start_pos.x+20:
		direction = -1
	if position.x<start_pos.x-20:
		direction = 1


func hit()-> void:
	emit_signal("destroyed")


func set_position(pos:Vector2)->void:
	position = pos
	

func _on_Appearance_animation_finished()->void:
	self.queue_free()
