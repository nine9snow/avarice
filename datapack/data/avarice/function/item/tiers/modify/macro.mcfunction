$execute if items entity @s $(slot) #avarice:modified[minecraft:custom_data~{avarice: {tier: {modified: 1b}}}] run return 0

execute store result score #temp avarice.dummy run random value 0..100 avarice:tier
execute if score #temp avarice.dummy matches 0..55 run scoreboard players set #tier avarice.dummy 1
execute if score #temp avarice.dummy matches 56..85 run scoreboard players set #tier avarice.dummy 2
execute if score #temp avarice.dummy matches 86..100 run scoreboard players set #tier avarice.dummy 3

$item modify entity @s $(slot) avarice:tiers
$execute if score #tier avarice.dummy matches 1 run function avarice:item/tiers/modify/downgrade {slot: $(slot)}
$execute if score #tier avarice.dummy matches 3 run function avarice:item/tiers/modify/upgrade {slot: $(slot)}
