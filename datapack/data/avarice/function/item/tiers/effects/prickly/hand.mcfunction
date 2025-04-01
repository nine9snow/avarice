data modify storage avarice:macro root.item set from entity @s SelectedItem
item replace entity @s weapon.mainhand with minecraft:air

execute store result storage avarice:macro root.x double 0.01 run random value -30..30 avarice:x_axis
execute store result storage avarice:macro root.z double 0.01 run random value -30..30 avarice:z_axis

execute anchored eyes run function avarice:item/tiers/effects/dispelling/spawn_item with storage avarice:macro root
