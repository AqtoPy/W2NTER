# В скрипте игрока
var is_on_summit = false

func _on_summit_area_entered(area):
    if area.is_in_group("summit"):
        is_on_summit = true
        show_flag_ui() # Показать интерфейс установки флага

func _on_summit_area_exited(area):
    if area.is_in_group("summit"):
        is_on_summit = false



# В скрипте игрока
var flag_scene = preload("res://Flag.tscn")

func place_flag(mountain_name):
    var new_flag = flag_scene.instantiate()
    new_flag.set_name(mountain_name)
    get_tree().current_scene.add_child(new_flag)
    new_flag.global_transform.origin = global_transform.origin
    
    # Сохраняем в базу данных (простой вариант)
    save_mountain_data(mountain_name, global_transform.origin)
