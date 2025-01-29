execute store result score #temp avarice.dummy run random value 1..35 avarice:effects

execute if score #temp avarice.dummy matches 1 run effect give @s minecraft:fire_resistance infinite
execute if score #temp avarice.dummy matches 2 run effect give @s minecraft:speed infinite
execute if score #temp avarice.dummy matches 3 run effect give @s minecraft:weaving infinite
execute if score #temp avarice.dummy matches 4 run effect give @s minecraft:oozing infinite
execute if score #temp avarice.dummy matches 5 run effect give @s minecraft:infested infinite
execute if score #temp avarice.dummy matches 6 run effect give @s minecraft:wind_charged infinite

execute if score #temp avarice.dummy matches 7 run tag @s add avarice.blazing
execute if score #temp avarice.dummy matches 8 run tag @s add avarice.vexed
execute if score #temp avarice.dummy matches 9 run tag @s add avarice.tempest
execute if score #temp avarice.dummy matches 7..9 run function avarice:entity/apply_custom_effects

execute if score #temp avarice.dummy matches 1..9 run tag @s add avarice.given_effect
