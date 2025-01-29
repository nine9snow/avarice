$execute unless items entity @s container.$(value) * run return 0
$data modify storage avarice:macro root.item set from entity @s Inventory[{Slot:$(value)b}]
$item replace entity @s container.$(value) with air

execute store result storage avarice:macro root.x double 0.01 run random value -80..80 avarice:x_axis
execute store result storage avarice:macro root.z double 0.01 run random value -80..80 avarice:z_axis

function avarice:curse/effect/forfeit/spawn_item with storage avarice:macro root
