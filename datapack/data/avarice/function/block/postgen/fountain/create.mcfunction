execute if predicate avarice:chance/0.5 run tag @s add avarice.inverse_x
execute if predicate avarice:chance/0.5 run tag @s add avarice.inverse_z

execute unless entity @s[tag=avarice.inverse_x] store result storage avarice:macro root.x int 1 run random value 16..32 avarice:x_axis
execute if entity @s[tag=avarice.inverse_x] store result storage avarice:macro root.x int 1 run random value -32..-16 avarice:x_axis
execute unless entity @s[tag=avarice.inverse_z] store result storage avarice:macro root.z int 1 run random value 16..32 avarice:z_axis
execute if entity @s[tag=avarice.inverse_z] store result storage avarice:macro root.z int 1 run random value -32..-16 avarice:z_axis
function avarice:block/postgen/fountain/macro with storage avarice:macro root

tag @s remove avarice.inverse_x
tag @s remove avarice.inverse_z
