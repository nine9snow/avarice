data remove entity @s interaction
execute if entity @s[tag=avarice.reviving] run return 0

execute if data storage avarice:macro root.item.components."minecraft:custom_data".avarice{id: "false_heart"} if entity @a[gamemode=spectator,tag=!avarice.spectator] run return run function avarice:block/fountain/revive/main
$execute if data storage avarice:fountain_item {root:{id:"$(id)"}} run function avarice:block/fountain/interact/success
execute unless data storage avarice:fountain_item root.id run data modify storage avarice:macro root.paid set value 1
