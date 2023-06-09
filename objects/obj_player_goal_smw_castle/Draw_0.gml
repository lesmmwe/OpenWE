if (global.yoshi == 1)
{
    if instance_exists(obj_yoshi_red)
    {
        var s_yoshi = spr_yoshi_red
        var s_yoshi_jump = spr_yoshi_jump_red
    }
    else
    {
        s_yoshi = spr_yoshi
        s_yoshi_jump = spr_yoshi_jump
    }
    if (vspeed != 0)
    {
        if (vspeed < 0)
            draw_sprite_ext(s_yoshi_jump, 0, round(x), (round(y) + (16 + h)), direct, 1, 0, c_white, image_alpha)
        else
            draw_sprite_ext(s_yoshi_jump, 1, round(x), (round(y) + (16 + h)), direct, 1, 0, c_white, image_alpha)
        draw_sprite_ext(scr_marioride(), image_index, round(x), (y - (9 - h)), direct, 1, 0, c_white, image_alpha)
    }
    else if (pose == 1)
    {
        draw_sprite_ext(s_yoshi, 0, round(x), (round(y) + (16 + h)), direct, 1, 0, c_white, image_alpha)
        draw_sprite_ext(scr_mario_yoshi_goal(), image_index, round(x), (y - (9 - h)), direct, 1, 0, c_white, image_alpha)
    }
    else
    {
        draw_sprite_ext(s_yoshi, image_index, round(x), (round(y) + (16 + h)), direct, 1, 0, c_white, image_alpha)
        draw_sprite_ext(scr_marioride(), image_index, round(x), (y - (9 - h)), direct, 1, 0, c_white, image_alpha)
    }
}
else if (global.yoshi == 0)
{
    draw_sprite_ext(sprite_index, image_index, round(x), (y + h), direct, 1, 0, c_white, image_alpha)
    if (instance_exists(obj_invincibility) && global.effect_star == 1)
    {
        shader_set(sha_invert)
        draw_sprite_ext(sprite_index, -1, round(x), (round(y) + h), direct, 1, 0, c_white, 1)
        shader_reset()
    }
}
