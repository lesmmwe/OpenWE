with (obj_iname)
    instance_destroy()
with (obj_bl2)
    instance_destroy()
with (obj_iname_close)
    instance_destroy()
with (obj_lun)
    instance_destroy()
with (obj_lp)
    instance_destroy()
with (obj_bl)
    instance_destroy()
instance_activate_all()
if sprite_exists(back)
    sprite_delete(back)

