extends Node

var inputs:Array[InputType]

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if !inputs.is_empty():
		inputs[-1].get_input()

func add_input(new_input:InputType) -> void:
	inputs.append(new_input)
	
func pop_input() -> void:
	if !inputs.is_empty():
		inputs.pop_back()
