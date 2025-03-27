data modify storage avarice:macro root.item set from entity @s item.components."minecraft:custom_data".items.inventory[0]
data remove entity @s item.components."minecraft:custom_data".items.inventory[0]

function avarice:player/death/empty/macro/spawn with storage avarice:macro root

scoreboard players remove #temp avarice.dummy 1
execute if score #temp avarice.dummy matches 1.. run function avarice:player/death/empty/loop
