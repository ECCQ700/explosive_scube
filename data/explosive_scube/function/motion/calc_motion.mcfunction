execute unless predicate explosive_scube:on_vehicle run function explosive_scube:motion/get_pos
execute if predicate explosive_scube:on_vehicle run function explosive_scube:motion/get_pos_vehicle

scoreboard players operation @s esc.v_x = @s esc.pos_x
scoreboard players operation @s esc.v_x -= @s esc.pos_x_last
scoreboard players operation @s esc.v_y = @s esc.pos_y
scoreboard players operation @s esc.v_y -= @s esc.pos_y_last
scoreboard players operation @s esc.v_z = @s esc.pos_z
scoreboard players operation @s esc.v_z -= @s esc.pos_z_last

scoreboard players operation @s esc.pos_x_last = @s esc.pos_x
scoreboard players operation @s esc.pos_y_last = @s esc.pos_y
scoreboard players operation @s esc.pos_z_last = @s esc.pos_z

scoreboard players reset @s esc.acc_squared

scoreboard players operation @s esc.dv_x = @s esc.v_x
scoreboard players operation @s esc.dv_x -= @s esc.v_x_last
scoreboard players operation @s esc.dv_y = @s esc.v_y
scoreboard players operation @s esc.dv_y -= @s esc.v_y_last
scoreboard players operation @s esc.dv_z = @s esc.v_z
scoreboard players operation @s esc.dv_z -= @s esc.v_z_last

scoreboard players operation @s esc.dv_x *= @s esc.dv_x
scoreboard players operation @s esc.dv_y *= @s esc.dv_y
scoreboard players operation @s esc.dv_z *= @s esc.dv_z
scoreboard players operation @s esc.acc_squared += @s esc.dv_x
scoreboard players operation @s esc.acc_squared += @s esc.dv_y
scoreboard players operation @s esc.acc_squared += @s esc.dv_z

scoreboard players operation @s esc.v_x_last = @s esc.v_x
scoreboard players operation @s esc.v_y_last = @s esc.v_y
scoreboard players operation @s esc.v_z_last = @s esc.v_z