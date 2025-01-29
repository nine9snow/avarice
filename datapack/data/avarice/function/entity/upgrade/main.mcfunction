scoreboard players operation #temp avarice.dummy = @s avarice.index

execute if entity @s[type=minecraft:zombie] run return run function avarice:entity/upgrade/macro {entity: "minecraft:husk"}

execute if entity @s[type=minecraft:skeleton,predicate=avarice:chance/0.5] run return run function avarice:entity/upgrade/macro {entity: "minecraft:bogged"}
execute if entity @s[type=minecraft:skeleton] run function avarice:entity/upgrade/macro {entity: "minecraft:stray"}

execute if entity @s[type=minecraft:spider] run function avarice:entity/upgrade/macro {entity: "minecraft:cave_spider"}
