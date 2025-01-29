execute if predicate avarice:valid_spawn run return run function avarice:block/miser/active/spawning/spawn

scoreboard players remove #max_height avarice.dummy 1
execute unless score #max_height avarice.dummy matches 0 positioned ~ ~-1 ~ run function avarice:block/miser/active/spawning/position/raycast
