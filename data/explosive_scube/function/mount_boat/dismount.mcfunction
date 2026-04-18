tag @s remove esc.on_boat
execute unless data entity @s {leash:{}} run return run scoreboard players set @s esc.mount_cooldown 5
scoreboard players set @s esc.mount_cooldown 40