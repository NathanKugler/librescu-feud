extends Control



func _ready():
	add_to_group("Audio")


func _process(delta):
	pass

func win():
	$ThemeMusic.play() 

func ding():
	$DingMusic.play()
func popding():
	$PopDingMusic.play()


func _on_theme_toggled(button_pressed):
	if button_pressed:
		$ThemeMusic.play()
	else:
		$ThemeMusic.stop()
		

func _on_theme_music_finished():
	$Theme.toggle_mode = false


func _on_kill_pressed():
	get_tree().call_group("Music", "kill")
	get_tree().call_group("MusicButton", "kill")



func _on_bum_toggled(button_pressed):
	if button_pressed:
		$BumMusic.play()
	else:
		$BumMusic.stop()


func _on_bum_music_finished():
	$Bum.toggle_mode = false


func _on_ding_toggled(button_pressed):
	if button_pressed:
		$DingMusic.play()
	else:
		$DingMusic.stop()


func _on_disappointed_toggled(button_pressed):
	if button_pressed:
		$DisappointedMusic.play()
	else:
		$DisappointedMusic.stop()


func _on_ugh_toggled(button_pressed):
	if button_pressed:
		$UghMusic.play()
	else:
		$UghMusic.stop()


func _on_whatthehell_toggled(button_pressed):
	if button_pressed:
		$WhatthehellMusic.play()
	else:
		$WhatthehellMusic.stop()


func _on_ding_music_finished():
	$Ding.toggle_mode = false


func _on_disappointed_music_finished():
	$Disappointed.toggle_mode = false


func _on_ugh_music_finished():
	$Ugh.toggle_mode = false


func _on_whatthehell_music_finished():
	$Whatthehell.toggle_mode = false

func _on_pop_ding_toggled(button_pressed):
	if button_pressed:
		$PopDingMusic.play()
	else:
		$PopDingMusic.stop()

func _on_pop_ding_music_finished():
	$PopDing.toggle_mode = false



# BUZZERS

func family_a_buzzer_play():
	$FamilyABuzzerMusic.play()

func family_a_buzzer_stop():
	$FamilyABuzzerMusic.stop()

func _on_family_a_buzzer_toggled(button_pressed):
	if button_pressed:
		family_a_buzzer_play()
	else:
		family_a_buzzer_stop()

func _on_family_a_buzzer_music_finished():
	$FamilyABuzzer.toggle_mode = false



func family_b_buzzer_play():
	$FamilyBBuzzerMusic.play()
	
func family_b_buzzer_stop():
	$FamilyBBuzzerMusic.stop()

func _on_family_b_buzzer_toggled(button_pressed):
	if button_pressed:
		family_b_buzzer_play()
	else:
		family_b_buzzer_stop()

func _on_family_b_buzzer_music_finished():
	$FamilyBBuzzer.toggle_mode = false






