playsound avarice:entity.blazing hostile @a[distance=..16]
particle minecraft:lava ~ ~ ~ 0.5 0.5 0.5 0 16 force
particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.03 12 force

execute positioned ~ ~ ~-2 run function avarice:entity/custom_effects/blazing/layer
execute positioned ~ ~ ~-1 run function avarice:entity/custom_effects/blazing/layer
execute positioned ~ ~ ~ run function avarice:entity/custom_effects/blazing/layer
execute positioned ~ ~ ~1 run function avarice:entity/custom_effects/blazing/layer
execute positioned ~ ~ ~2 run function avarice:entity/custom_effects/blazing/layer

execute if block ~ ~ ~ #minecraft:air run setblock ~ ~ ~ minecraft:fire
