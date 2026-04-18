scoreboard players reset @s esc.boat_passenger_count
execute on passengers run execute on vehicle run scoreboard players add @s esc.boat_passenger_count 1
execute if entity @s[type=#explosive_scube:chest_boat, scores={esc.boat_passenger_count=1..}] run return fail
execute if entity @s[type=#minecraft:boat, scores={esc.boat_passenger_count=2..}] run return fail
tag @s add esc.mount_temp
return 1