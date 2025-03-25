execute if data entity @s item.components."minecraft:custom_data".items.equipment.head run function avarice:player/death/empty/macro/equipment {slot: "head"}
execute if data entity @s item.components."minecraft:custom_data".items.equipment.chest run function avarice:player/death/empty/macro/equipment {slot: "chest"}
execute if data entity @s item.components."minecraft:custom_data".items.equipment.legs run function avarice:player/death/empty/macro/equipment {slot: "legs"}
execute if data entity @s item.components."minecraft:custom_data".items.equipment.feet run function avarice:player/death/empty/macro/equipment {slot: "feet"}
execute if data entity @s item.components."minecraft:custom_data".items.equipment.offhand run function avarice:player/death/empty/macro/equipment {slot: "offhand"}

execute store result score #temp avarice.dummy run data get entity @s item.components."minecraft:custom_data".items.inventory
function avarice:player/death/empty/loop

kill @s
