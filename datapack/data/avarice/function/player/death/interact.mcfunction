advancement revoke @s only avarice:technical/interact_with_urn

execute as @n[type=minecraft:interaction,tag=avarice.death_urn,nbt={attack:{}}] at @s run function avarice:player/death/empty/main
