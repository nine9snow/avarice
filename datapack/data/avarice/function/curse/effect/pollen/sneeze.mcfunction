execute anchored eyes positioned ^ ^ ^0.5 run particle minecraft:sneeze ~ ~ ~ 0 0 0 0.1 4
playsound avarice:entity.sneeze player @a[distance=..16]

scoreboard players set @s avarice.sneeze 20
effect give @s blindness 1 0 true
attribute @s minecraft:movement_speed modifier add avarice:sneeze -1 add_value
attribute @s minecraft:jump_strength modifier add avarice:sneeze -1 add_value

execute unless items entity @s weapon.mainhand * run return 0
data remove storage avarice:macro root.item
data modify storage avarice:macro root.item set from entity @s SelectedItem

execute store result storage avarice:macro root.x double 0.01 run random value -30..30 avarice:x_axis
execute store result storage avarice:macro root.z double 0.01 run random value -30..30 avarice:z_axis

execute anchored eyes run function avarice:curse/effect/pollen/spawn_item with storage avarice:macro root

item replace entity @s weapon.mainhand with air
