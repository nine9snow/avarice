data remove entity @s interaction

execute on vehicle if entity @s[tag=avarice.ignited] run return run function avarice:block/miser/interact/glow/main

execute if data storage avarice:macro root.item{id:"minecraft:flint_and_steel"} run function avarice:block/miser/interact/attempt_ignite
execute if data storage avarice:macro root.item{id:"minecraft:fire_charge"} run function avarice:block/miser/interact/attempt_ignite
