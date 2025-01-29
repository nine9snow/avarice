particle minecraft:flame ~ ~1.6 ~ 0.33 0.33 0.33 0.03 3
execute if predicate avarice:chance/0.33 run particle minecraft:lava ~ ~1.6 ~ 0.33 0.33 0.33 0.03 1

execute unless predicate avarice:chance/0.5 run return 0
execute if entity @s[tag=avarice.ignite_delay] run return run tag @s remove avarice.ignite_delay

execute store result storage avarice:macro root.index int 1 run scoreboard players get @s avarice.index
scoreboard players operation #index avarice.dummy = @s avarice.index
function avarice:block/miser/active/detect with storage avarice:macro root
