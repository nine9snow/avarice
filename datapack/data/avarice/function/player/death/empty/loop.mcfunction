data modify storage avarice:macro root.item set from entity @s item.components."minecraft:custom_data".items.inventory[0]
data remove entity @s item.components."minecraft:custom_data".items.inventory[0]

execute if data storage avarice:macro root.item.inventory.components run function avarice:player/death/empty/macro/components with storage avarice:macro root.item
execute unless data storage avarice:macro root.item.inventory.components run function avarice:player/death/empty/macro/default with storage avarice:macro root.item

scoreboard players remove #temp avarice.dummy 1
execute if score #temp avarice.dummy matches 1.. run function avarice:player/death/empty/loop
