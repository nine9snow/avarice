execute if score @s avarice.dummy matches 3.. run return run function avarice:block/miser/active/reward

scoreboard players set #total_attempts avarice.dummy 30
execute store result score #monster avarice.dummy run random value 1..13 avarice:monsters
execute store result score #count avarice.dummy run random value 3..5 avarice:monster_count
execute if score #monster avarice.dummy matches 5 run scoreboard players remove #count avarice.dummy 1
execute if score #monster avarice.dummy matches 7 run scoreboard players remove #count avarice.dummy 1
execute if score #monster avarice.dummy matches 8 run scoreboard players remove #count avarice.dummy 2
execute store result score #temp avarice.dummy if entity @a[gamemode=!spectator,distance=..24]
scoreboard players operation #count avarice.dummy += #temp avarice.dummy

function avarice:block/miser/active/spawning/loop
particle minecraft:trial_spawner_detection ~ ~0.5 ~ 0.5 0.5 0.5 0 8
playsound avarice:block.miser.summon block @a[distance=..16]
scoreboard players add @s avarice.dummy 1
