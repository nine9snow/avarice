scoreboard players set #max_height avarice.dummy 8
execute store result storage avarice:macro root.x int 1 run random value -2..2 avarice:x_axis
execute store result storage avarice:macro root.z int 1 run random value -2..2 avarice:z_axis
execute if data storage avarice:macro root{x:0} run data modify storage avarice:storage root.x set value 1
execute if data storage avarice:macro root{z:0} run data modify storage avarice:storage root.z set value 1

function avarice:block/miser/active/spawning/position/main with storage avarice:macro root

scoreboard players remove #total_attempts avarice.dummy 1
execute if score #count avarice.dummy matches 1.. if score #total_attempts avarice.dummy matches 1.. run function avarice:block/miser/active/spawning/loop
