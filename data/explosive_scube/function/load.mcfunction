scoreboard objectives add Motion_Data_Display dummy
scoreboard objectives add esc.activate_timer dummy
scoreboard objectives add esc.critical_acc dummy
scoreboard objectives add esc.mount_cooldown dummy
scoreboard objectives add esc.boat_passenger_count dummy

scoreboard players set #GLOBAL_CRITICAL_ACC esc.critical_acc 1500000
scoreboard players set #GLOBAL_MINECART_CRITICAL_ACC esc.critical_acc 650000
scoreboard players set #GLOBAL_BOAT_CRITICAL_ACC esc.critical_acc 150000
scoreboard players set #GLOBAL_BOAT_WATER_CRITICAL_ACC esc.critical_acc 40000

scoreboard objectives add esc.pos_x dummy
scoreboard objectives add esc.pos_y dummy
scoreboard objectives add esc.pos_z dummy

scoreboard objectives add esc.pos_x_last dummy
scoreboard objectives add esc.pos_y_last dummy
scoreboard objectives add esc.pos_z_last dummy

scoreboard objectives add esc.v_x dummy
scoreboard objectives add esc.v_y dummy
scoreboard objectives add esc.v_z dummy

scoreboard objectives add esc.v_x_last dummy
scoreboard objectives add esc.v_y_last dummy
scoreboard objectives add esc.v_z_last dummy

scoreboard objectives add esc.dv_x dummy
scoreboard objectives add esc.dv_y dummy
scoreboard objectives add esc.dv_z dummy

scoreboard objectives add esc.acc_squared dummy

tellraw @p "---------------"
tellraw @p ["爆爆硫方怪 V1.0\n项目地址：",\
{text:"Github",color:"blue",underlined:1b,click_event:{action:"open_url",url:"https://github.com/ECCQ700/explosive_scube"}}]
tellraw @p "作者：Eric700"
tellraw @p "---------------"
