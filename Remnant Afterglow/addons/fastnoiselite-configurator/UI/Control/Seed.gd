extends HBoxContainer

@onready var randomize_button = $HBoxContainer/RandomizeButton
@onready var spin_box = $HBoxContainer/SpinBox


func _ready():
	randomize_button.connect("pressed", func():
		spin_box.value = randi_range(-2147483648,2147483647)
	)

