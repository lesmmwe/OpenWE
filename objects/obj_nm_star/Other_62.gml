if (ds_map_find_value(async_load, "id") == url)
{
    if (ds_map_find_value(async_load, "status") == 0)
    {
        var resultado = ds_map_find_value(async_load, "result")
        var map = json_decode(resultado)
        if (map == -1)
        {
            show_debug_message("Resultado invalido")
            return;
        }
        if (!(ds_map_exists(map, "message")))
        {
            var type = ds_map_find_value(map, "type")
            if (type == "promising")
            {
                image_index = 1
                scr_toast(0, "Se agrego a prometedores")
            }
            else
            {
                image_index = 0
                scr_toast(0, "Se elimino de prometedores")
            }
        }
        else if ds_map_exists(map, "message")
        {
            var mes = ds_map_find_value(map, "message")
            scr_toast(1, mes)
        }
        ds_map_destroy(map)
    }
    else
        scr_toast(1, "Ocurrio un error")
}
