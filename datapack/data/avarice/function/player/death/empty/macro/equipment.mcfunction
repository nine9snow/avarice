$data modify storage avarice:macro root.item set from entity @s item.components."minecraft:custom_data".items.equipment.$(slot)

execute if data storage avarice:macro root.item.inventory.components run function avarice:player/death/empty/macro/components with storage avarice:macro root.item
execute unless data storage avarice:macro root.item.inventory.components run function avarice:player/death/empty/macro/default with storage avarice:macro root.item
