$scoreboard players set #slot avarice.dummy $(remove)

execute if score #slot avarice.dummy matches 0..8 run return run function avarice:player/death/vanishing/remove_hotbar with storage avarice:macro root

execute if score #slot avarice.dummy matches 9..35 store result storage avarice:macro root.remove int 1 run scoreboard players remove #slot avarice.dummy 9
execute if score #slot avarice.dummy matches 0..35 run return run function avarice:player/death/vanishing/remove_inventory with storage avarice:macro root

execute if score #slot avarice.dummy matches -106 run item replace entity @s weapon.offhand with minecraft:air
execute if score #slot avarice.dummy matches 100 run item replace entity @s armor.feet with minecraft:air
execute if score #slot avarice.dummy matches 101 run item replace entity @s armor.legs with minecraft:air
execute if score #slot avarice.dummy matches 102 run item replace entity @s armor.chest with minecraft:air
execute if score #slot avarice.dummy matches 103 run item replace entity @s armor.head with minecraft:air
