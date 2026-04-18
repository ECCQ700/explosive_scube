# Help mount on boat if applicable
function explosive_scube:mount_boat/update_state

# Reset activate timer if the cube is just mounted or below certain velocity.
execute if entity @s[tag=!esc.mounted, predicate=explosive_scube:on_vehicle] run function explosive_scube:reset_activate_timer
tag @s[tag=esc.mounted, predicate=!explosive_scube:on_vehicle] remove esc.mounted
execute if entity @s[predicate=!explosive_scube:motion_activate] run function explosive_scube:reset_activate_timer

tag @s[scores={esc.activate_timer=0}] add esc.activated
execute if entity @s[scores={esc.activate_timer=0}] run function explosive_scube:calc_motion
execute if entity @s[scores={esc.activate_timer=1..}, predicate=explosive_scube:motion_activate] run function explosive_scube:activate_countdown

execute if entity @s[tag=esc.activated, predicate=!explosive_scube:motion_activate] run function explosive_scube:deactivate
# TODO: fix motion_activate predicate for vehicles beside minecart.


# Check if acceleration exceeds threshold under various scenarios. 
execute unless predicate explosive_scube:on_vehicle if score @s esc.acc_squared >= #GLOBAL_CRITICAL_ACC esc.critical_acc run return run kill @s
execute if predicate explosive_scube:on_minecart if score @s esc.acc_squared >= #GLOBAL_MINECART_CRITICAL_ACC esc.critical_acc run return run kill @s
execute if predicate explosive_scube:on_boat_dry if score @s esc.acc_squared >= #GLOBAL_BOAT_CRITICAL_ACC esc.critical_acc run return run kill @s
execute if predicate explosive_scube:on_boat_in_water if score @s esc.acc_squared >= #GLOBAL_BOAT_WATER_CRITICAL_ACC esc.critical_acc run return run kill @s