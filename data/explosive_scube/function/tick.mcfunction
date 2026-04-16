execute as @e[type=sulfur_cube, tag=!explosive_scube, predicate=explosive_scube:is_explosive] run function explosive_scube:arm
execute as @e[type=sulfur_cube, tag=explosive_scube, predicate=!explosive_scube:is_explosive] run function explosive_scube:disarm

execute as @e[type=sulfur_cube, tag=explosive_scube] at @s run function explosive_scube:check_motion_activate
execute as @e[type=item, predicate=explosive_scube:exploding_tnt] at @s run function explosive_scube:summon_detonator
execute as @e[type=item, predicate=explosive_scube:exploding_tnt_fire] at @s run function explosive_scube:summon_detonator_fire

# Debug Display
# execute at @p as @n[type=sulfur_cube, tag=explosive_scube] run function explosive_scube:disp_motion
