# В скрипте игрока
var is_on_summit = false

func _on_summit_area_entered(area):
    if area.is_in_group("summit"):
        is_on_summit = true
        show_flag_ui() # Показать интерфейс установки флага

func _on_summit_area_exited(area):
    if area.is_in_group("summit"):
        is_on_summit = false
