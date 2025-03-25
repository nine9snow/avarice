execute if entity @s[type=#avarice:crown/skeleton] if data entity @s data.weapon run data modify entity @s equipment.mainhand set from entity @s data.weapon
execute if entity @s[type=minecraft:wither_skeleton] run function avarice:entity/crown/effect/wither_skeleton/show
