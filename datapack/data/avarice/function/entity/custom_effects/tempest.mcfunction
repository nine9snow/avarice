scoreboard players add #temp avarice.dummy 1
execute if block ~ ~-0.01 ~ #minecraft:air positioned ~ ~-0.01 ~ unless score #temp avarice.dummy matches 300.. run return run function avarice:entity/custom_effects/tempest

summon minecraft:lightning_bolt
