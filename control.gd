extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass 

# Calleds every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("interact"):
		$RichTextLabel2.show()
		$RichTextLabel3.show()
		$RichTextLabel4.show()
		$RichTextLabel5.show()
		await get_tree().create_timer(5.0).timeout
		$RichTextLabel2.hide()
		$RichTextLabel3.hide()
		$RichTextLabel4.hide()
		$RichTextLabel.show()
	if Input.is_action_just_pressed("pick_up"):
		$RichTextLabel.show()
		await get_tree().create_timer(1).timeout
		$RichTextLabel.hide()
