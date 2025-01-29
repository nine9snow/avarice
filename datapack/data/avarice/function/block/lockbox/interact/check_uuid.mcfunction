$execute if data entity @s item.components."minecraft:custom_data".uuids[{id: $(uuid)}] run return run function avarice:block/lockbox/interact/reject
$data modify entity @s item.components."minecraft:custom_data".uuids append value {id: $(uuid)}

tag @s add avarice.opening
data modify entity @s item.components."minecraft:item_model" set value "avarice:lockbox/opened"
execute store result score @s avarice.dummy run random value 4..5 avarice:lockbox
kill @n[type=minecraft:item_display,tag=avarice.lockbox_display]

execute if data storage avarice:macro root.item.components."minecraft:custom_data".avarice{id: "key_of_the_miser"} run function avarice:block/lockbox/interact/open/miser
execute if data storage avarice:macro root.item.components."minecraft:custom_data".avarice{id: "key_of_charity"} run function avarice:block/lockbox/interact/open/charity
