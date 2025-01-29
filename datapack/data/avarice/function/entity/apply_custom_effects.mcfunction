tag @s add avarice.has_custom_effects
execute if entity @s[tag=avarice.blazing] run summon minecraft:marker ~ ~ ~ {Tags:["smithed.strict","avarice.tick","avarice.custom_effect","avarice.blazing"]}
execute if entity @s[tag=avarice.vexed] run summon minecraft:marker ~ ~ ~ {Tags:["smithed.strict","avarice.tick","avarice.custom_effect","avarice.vexed"]}
execute if entity @s[tag=avarice.tempest] run summon minecraft:marker ~ ~ ~ {Tags:["smithed.strict","avarice.tick","avarice.custom_effect","avarice.tempest"]}
execute as @n[type=minecraft:marker,tag=avarice.custom_effect] run ride @s mount @n[type=!minecraft:marker,tag=avarice.has_custom_effects]
