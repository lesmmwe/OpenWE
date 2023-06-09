if (obj_levelmanager.editor == 1)
{
    audio_play_sound(snd_seleccion_entorno1, 0, false)
    if instance_exists(obj_player_trail)
    {
        with (obj_player_trail)
            instance_destroy()
    }
    global.bg_level = bg_s
    event_user(0)
    audio_stop_sound(obj_creator_jugar_editar.music_editor)
    audio_play_sound(s_music_editor, 99, true)
    obj_creator_jugar_editar.music_editor = s_music_editor
    if (bg_s == "castle")
    {
        if instance_exists(obj_lava_water)
        {
            with (obj_lava_water)
                instance_destroy()
        }
        with (instance_create(camera_get_view_x(view_get_camera(0)), (room_height - 4), obj_lava_water))
        {
            switch global.apariencia
            {
                case 0:
                    sprite_index = spr_SMB_lava
                    break
                case 1:
                    sprite_index = spr_SMB3_lava
                    break
                case 2:
                    sprite_index = spr_lava
                    break
                case 3:
                    sprite_index = spr_NSMBU_lava
                    break
                case 4:
                    sprite_index = spr_SMB2_lava
                    break
            }

        }
    }
    else if (bg_s == "forest" && global.modo_noche == 1)
    {
        if instance_exists(obj_lava_water)
        {
            with (obj_lava_water)
                instance_destroy()
        }
        with (instance_create(camera_get_view_x(view_get_camera(0)), (room_height - 4), obj_lava_water))
        {
            switch global.apariencia
            {
                case 0:
                    sprite_index = spr_SMB_lava_purple
                    break
                case 1:
                    sprite_index = spr_SMB3_lava_purple
                    break
                case 2:
                    sprite_index = spr_lava_purple
                    break
                case 3:
                    sprite_index = spr_NSMBU_lava
                    break
                case 4:
                    sprite_index = spr_SMB2_lava_purple
                    break
            }

        }
    }
    else if ((bg_s == "forest" && global.modo_noche == 0) || bg_s == "beach")
    {
        if instance_exists(obj_lava_water)
        {
            with (obj_lava_water)
                instance_destroy()
        }
        with (instance_create(camera_get_view_x(view_get_camera(0)), (room_height - 4), obj_lava_water))
        {
            switch global.apariencia
            {
                case 0:
                    sprite_index = spr_SMB_water
                    break
                case 1:
                    if (other.bg_s == "beach")
                        sprite_index = spr_SMB3_water_b
                    else
                        sprite_index = spr_SMB3_water
                    break
                case 2:
                    sprite_index = spr_water
                    break
                case 3:
                    sprite_index = spr_NSMBU_water
                    break
                case 4:
                    sprite_index = spr_SMB2_water
                    break
            }

        }
    }
    else if !instance_exists(obj_lava_water) && ((bg_s == "mountain") && (global.modo_noche == 1))
    {
    if instance_exists(obj_lava_water)
    {
        with (obj_lava_water)
            instance_destroy()
    }
    with (instance_create(camera_get_view_x(view_get_camera(0)), (room_height - 4), obj_lava_water))
    {
        switch global.apariencia
        {
            case 0:
                sprite_index = spr_SMB_lava
                break
            case 1:
                sprite_index = spr_SMB3_lava
                break
            case 2:
                sprite_index = spr_lava
                break
            case 3:
                sprite_index = spr_nsmbu_lava2
                break
        }
        
    }
}
    else if instance_exists(obj_lava_water) && ((global.bg_level == "mountain") && (global.modo_noche == 0))
{
    with (obj_lava_water)
        instance_destroy()
}
    else if instance_exists(obj_lava_water)
    {
        with (obj_lava_water)
            instance_destroy()
    }
    event_user(1)
    with (obj_editormanager)
        alarm[0] = 15
    with (obj_bg_selection)
        event_user(0)
}

