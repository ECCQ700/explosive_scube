scoreboard players operation # esc.mount_cooldown = @s esc.mount_cooldown
execute as @s[tag=!esc.on_boat, scores={esc.mount_cooldown=0}] at @s if entity @e[distance=..1.5,type=#explosive_scube:all_boat] run function explosive_scube:mount_boat/mount
scoreboard players remove @s[tag=!esc.on_boat, scores={esc.mount_cooldown=1..}] esc.mount_cooldown 1
execute as @s[tag=esc.on_boat, predicate=!explosive_scube:on_boat] run function explosive_scube:mount_boat/dismount