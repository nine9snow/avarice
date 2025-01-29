particle minecraft:lava ~ ~ ~ 1.25 1.25 1.25 0 4
particle minecraft:flame ~ ~ ~ 1.25 1.25 1.25 0.05 6 force

scoreboard players add @s avarice.dummy 1
execute if score @s avarice.dummy matches 10 run playsound avarice:curse.debris.ambient block @a[distance=..64] ~ ~ ~ 4
execute if score @s avarice.dummy matches 10 run scoreboard players reset @s avarice.dummy

function avarice:curse/effect/debris/move
execute at @s unless predicate avarice:submerged run function avarice:curse/effect/debris/move
execute at @s unless predicate avarice:submerged run function avarice:curse/effect/debris/move
execute if entity @s[tag=avarice.delete] run kill @s

execute if entity @s[y=-128,dy=48] run kill @s
execute unless score #curse avarice.dummy matches 7 if entity @s[y=200,dy=1000] run kill @s
