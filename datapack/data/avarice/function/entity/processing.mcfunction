tag @s add avarice.processed
function avarice:entity/modifiers

execute if score #curse avarice.dummy matches 2 run function avarice:curse/effect/gigantism
execute if score #curse avarice.dummy matches 3 run function avarice:curse/effect/doubling/main

data modify entity @s[type=#avarice:drops_false_heart/all] DeathLootTable set value "avarice:entities/replacement"
