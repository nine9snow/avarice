$summon $(entity)
$execute as @e[type=$(entity),sort=nearest,limit=2,tag=!smithed.entity] run function avarice:curse/effect/doubling/shrink

playsound avarice:entity.decrease_size hostile @a[distance=..16]
data modify entity @s DeathLootTable set value "minecraft:empty"
