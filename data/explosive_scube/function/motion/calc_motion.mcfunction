execute unless predicate explosive_scube:on_vehicle run data modify storage esc:tmp Pos set from entity @s Pos
execute if predicate explosive_scube:on_vehicle on vehicle run data modify storage esc:tmp Pos set from entity @s Pos

execute store result score @s esc.pos_x run data get storage esc:tmp Pos[0] 1000
execute store result score @s esc.pos_y run data get storage esc:tmp Pos[1] 1000
execute store result score @s esc.pos_z run data get storage esc:tmp Pos[2] 1000

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