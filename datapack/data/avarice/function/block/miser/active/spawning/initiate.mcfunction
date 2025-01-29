data modify entity @s PersistenceRequired set value 1b
scoreboard players operation @s avarice.index = #index avarice.dummy
function avarice:entity/processing
particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 0.05 10
