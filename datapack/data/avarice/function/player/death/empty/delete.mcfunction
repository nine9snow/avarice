execute on vehicle run function avarice:player/death/empty/as_display

particle minecraft:soul ~ ~0.25 ~ 0.5 0.5 0.5 0.1 12 force
particle minecraft:poof ~ ~0.25 ~ 0.2 0.2 0.2 0.01 5 force
playsound avarice:block.death_urn.break block @a[distance=..16]

kill @s
execute positioned ~ ~1.25 ~ run kill @n[type=minecraft:text_display,tag=avarice.death_urn]
