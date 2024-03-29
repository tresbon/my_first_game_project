extends Area2D

var screensize = Vector2()

func pickup():
	monitoring = false
	$Tween.start()
	
func _ready():
	$Tween.interpolate_property($AnimatedSprite, 'scale',
	$AnimatedSprite.scale, $AnimatedSprite.scale *3,
	0.3, Tween.TRANS_QUAD, Tween.EASE_IN_OUT)
	$Tween.interpolate_property($AnimatedSprite, 'modulate',
	Color(1,1,1,1), Color(1,1,1,0), 0.3,
	Tween.TRANS_QUAD, Tween.EASE_IN_OUT)

func _on_Tween_tween_all_completed():
	queue_free()
