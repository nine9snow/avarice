particle minecraft:lava ~ ~ ~ 1.5 1.5 1.5 0.5 25
particle minecraft:flame ~ ~ ~ 1.5 1.5 1.5 0.2 25
particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force

playsound avarice:curse.debris.explode block @a[distance=..64] ~ ~ ~ 4

execute as @a[distance=..6] run function avarice:curse/effect/debris/as_player
tag @s add avarice.delete
