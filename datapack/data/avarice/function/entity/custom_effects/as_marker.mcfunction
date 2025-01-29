execute if predicate avarice:riding_entity run return 0

execute unless entity @a[gamemode=!spectator,distance=..32] run return run kill @s

scoreboard players reset #temp avarice.dummy
execute if entity @s[tag=avarice.blazing] positioned ~ ~-0.5 ~ run function avarice:entity/custom_effects/blazing/main
execute if entity @s[tag=avarice.vexed] positioned ~ ~-0.5 ~ run function avarice:entity/custom_effects/vexed
execute if entity @s[tag=avarice.tempest] run function avarice:entity/custom_effects/tempest

kill @s
