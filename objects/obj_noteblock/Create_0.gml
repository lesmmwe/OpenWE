switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_noteblock
        image_speed = 0
        sprite_wings = spr_SMB_wings_16x16
        sound_block = 92
        switch global.bg_level
        {
            case "snow":
                if (global.modo_noche == 1)
                    image_index = 4
                else
                    image_index = 3
                break
            case "castle":
                image_index = 2
                break
            case "ghost":
                image_index = 1
                break
            case "underground":
                image_index = 1
                break
            default:
                if (global.modo_noche == 1)
                {
                    image_index = 1
                    break
                }
                else
                    image_index = 0
        }

        break
    case 1:
        switch global.bg_level
        {
            case "snow":
                if (global.modo_noche == 1)
                    sprite_index = spr_SMB3_noteblock_ice
                else
                    sprite_index = spr_SMB3_noteblock
                break
            case "castle":
                sprite_index = spr_SMB3_noteblock_dark
                break
            case "ghost":
                sprite_index = spr_SMB3_noteblock_night
                break
            case "underground":
                sprite_index = spr_SMB3_noteblock_night
                break
            default:
                if (global.modo_noche == 1)
                {
                    sprite_index = spr_SMB3_noteblock_night
                    break
                }
                else
                    sprite_index = spr_SMB3_noteblock
        }

        image_speed = 0.15
        sprite_wings = spr_SMB3_wings2
        sound_block = 92
        break
    case 2:
        sprite_index = spr_noteblock
        image_speed = 0.15
        sprite_wings = spr_wings_items
        sound_block = 261
        break
    case 3:
        sprite_index = spr_NSMBU_noteblock
        image_speed = 0.25
        sprite_wings = spr_NSMBU_wings_items
        sound_block = 490
        break
}

up = 0
down = 0
sprout = -1
sonido = 0
ready = 0
ready2 = 0
downwards = 0
wings = 0
wings_anim = 0
expand = 0
s_scalex = 1
s_scaley = 1
index = 245

