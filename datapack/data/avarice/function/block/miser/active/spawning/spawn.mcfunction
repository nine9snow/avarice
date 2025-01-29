scoreboard players operation #temp_monster avarice.dummy = #monster avarice.dummy
execute if score #monster avarice.dummy matches 10..13 store result score #temp_monster avarice.dummy run random value 1..8 avarice:monsters
scoreboard players remove #count avarice.dummy 1
tag @s add avarice.ignite_delay

execute if score #temp_monster avarice.dummy matches 1 run summon minecraft:zombie
execute if score #temp_monster avarice.dummy matches 2 run summon minecraft:husk
execute if score #temp_monster avarice.dummy matches 3 run summon minecraft:skeleton
execute if score #temp_monster avarice.dummy matches 4 run summon minecraft:stray
execute if score #temp_monster avarice.dummy matches 5 run summon minecraft:bogged
execute if score #temp_monster avarice.dummy matches 6 run summon minecraft:spider
execute if score #temp_monster avarice.dummy matches 7 run summon minecraft:cave_spider
execute if score #temp_monster avarice.dummy matches 8 run summon minecraft:slime
execute as @n[type=#avarice:miser_spawns] run function avarice:block/miser/active/spawning/initiate
