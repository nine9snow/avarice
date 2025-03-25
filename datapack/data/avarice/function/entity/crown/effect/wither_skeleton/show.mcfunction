data remove entity @s drop_chances.mainhand

data modify entity @s equipment.mainhand set from entity @s data.weapon
data modify entity @s drop_chances.mainhand set from entity @s data.drop_chances.mainhand
data modify entity @s equipment.head.components."minecraft:item_model" set value "avarice:monster_crown"

data remove entity @s data.weapon
data remove entity @s data.drop_chances

particle minecraft:large_smoke ~ ~1 ~ 0.5 0.65 0.5 0.1 18 force
effect clear @s minecraft:invisibility