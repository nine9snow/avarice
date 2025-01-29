attribute @s minecraft:scale modifier add avarice:doubling -0.5 add_value
attribute @s minecraft:attack_damage modifier add avarice:doubling -0.25 add_multiplied_base
attribute @s minecraft:max_health modifier add avarice:doubling -0.35 add_multiplied_base

tag @s add avarice.processed
function avarice:entity/modifiers

scoreboard players operation @s avarice.index = #temp_index avarice.dummy

execute if entity @s[type=minecraft:creeper] run data modify entity @s ExplosionRadius set value 1b
