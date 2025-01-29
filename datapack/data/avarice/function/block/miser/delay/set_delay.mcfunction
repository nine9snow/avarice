tag @s remove avarice.rewarding
tag @s add avarice.cooldown
tag @s add avarice.resting

execute store result score @s avarice.dummy run time query gametime
scoreboard players add @s avarice.dummy 36000

data modify entity @s item.components."minecraft:item_model" set value "avarice:miser/resting"
particle minecraft:trial_spawner_detection ~ ~0.5 ~ 0.5 0.5 0.5 0 8
