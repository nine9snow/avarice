execute as @e[type=#avarice:tick,tag=avarice.tick] at @s run function avarice:entity/tick
execute as @a run function avarice:player/tick

execute if score #curse_wheel avarice.dummy matches 1.. run function avarice:curse/roll/tick
execute if score #curse avarice.dummy matches 4 as @e[type=minecraft:item,nbt={Age:0s},tag=!smithed.entity,tag=!smithed.strict,predicate=avarice:chance/0.25] at @s unless data entity @s Thrower run function avarice:curse/effect/toll
