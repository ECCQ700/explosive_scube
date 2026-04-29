execute as @n[dx=1, dy=1, dz=1, type=#explosive_scube:all_boat] at @s unless function explosive_scube:mount_boat/passenger_check run return fail
ride @s mount @n[dx=1, dy=1, dz=1, tag=esc.mount_temp]
execute on vehicle run tag @s remove esc.mount_temp
tag @s[predicate=explosive_scube:on_boat] add esc.on_boat