$scoreboard players set #slot avarice.dummy $(remove)

execute if score #slot avarice.dummy matches 0..8 run return run function avarice:player/death/vanishing/remove_hotbar with storage avarice:macro root

execute if score #slot avarice.dummy matches 9..35 store result storage avarice:macro root.remove int 1 run scoreboard players remove #slot avarice.dummy 9
execute if score #slot avarice.dummy matches 0..35 run return run function avarice:player/death/vanishing/remove_inventory with storage avarice:macro root
