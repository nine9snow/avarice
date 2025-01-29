summon minecraft:lightning_bolt
playsound avarice:block.fountain.revive block @a[distance=..16]

execute as @r[gamemode=spectator,tag=!avarice.spectator] run function avarice:block/fountain/revive/as_player

tag @s remove avarice.reviving
execute if entity @s[tag=avarice.remove_load] run forceload remove ~ ~ ~ ~
tag @s remove avarice.remove_load
