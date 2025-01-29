tag @s remove avarice.cooldown
scoreboard players reset @s avarice.dummy

data modify entity @s item.components."minecraft:item_model" set value "avarice:miser/awaiting"
particle minecraft:trial_spawner_detection ~ ~0.5 ~ 0.5 0.5 0.5 0 8
tag @s add avarice.awaiting
tag @s remove avarice.ignited
