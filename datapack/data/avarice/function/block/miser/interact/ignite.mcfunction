data modify entity @s item.components."minecraft:item_model" set value "avarice:miser/summoning"
tag @s add avarice.ignited
tag @s add avarice.ignite_delay
tag @s remove avarice.awaiting
execute if data storage avarice:macro root.item{id:"minecraft:flint_and_steel"} run playsound avarice:block.miser.ignite_flint_and_steel block @a[distance=..16]
execute if data storage avarice:macro root.item{id:"minecraft:fire_charge"} run playsound avarice:block.miser.ignite_fire_charge block @a[distance=..16]
playsound avarice:block.miser.ignite block @a[distance=..16]

particle minecraft:flame ~ ~1.6 ~ 0.33 0.33 0.33 0.03 3 force
particle minecraft:lava ~ ~1.6 ~ 0.33 0.33 0.33 0.03 6 force
particle minecraft:trial_spawner_detection ~ ~0.5 ~ 0.5 0.5 0.5 0 8

data modify storage avarice:macro root.success set value 1
execute if data storage avarice:macro root.item{id:"minecraft:fire_charge"} run data modify storage avarice:macro root.success set value 2
data modify storage avarice:macro root.advancement set value 1
