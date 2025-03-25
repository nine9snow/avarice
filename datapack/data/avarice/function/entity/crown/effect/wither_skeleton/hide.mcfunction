effect give @s minecraft:invisibility 2
scoreboard players set @s avarice.crown_timer 30

execute if data entity @s data.weapon run return 0

data modify entity @s data.weapon set from entity @s equipment.mainhand
data modify entity @s data.drop_chances set from entity @s drop_chances.mainhand

data modify entity @s equipment.mainhand.components."minecraft:item_model" set value "avarice:empty"
data modify entity @s equipment.head.components."minecraft:item_model" set value "avarice:empty"
data modify entity @s data.drop_chances.mainhand set value 0.0

particle minecraft:large_smoke ~ ~1 ~ 0.5 0.65 0.5 0.1 18 force
