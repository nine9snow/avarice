attribute @s minecraft:movement_speed modifier remove avarice:burden
attribute @s minecraft:jump_strength modifier remove avarice:burden
scoreboard players set #armor_multiplier avarice.dummy 128

execute store result score #items avarice.dummy if items entity @s container.* *

execute store result score #items_add avarice.dummy if items entity @s armor.* *
scoreboard players operation #items_add avarice.dummy *= #armor_multiplier avarice.dummy
scoreboard players operation #items avarice.dummy += #items_add avarice.dummy

execute store result score #items_add avarice.dummy if items entity @s weapon.offhand *
execute store result storage avarice:macro root.value float 0.00005 run scoreboard players operation #items avarice.dummy += #items_add avarice.dummy
execute store result storage avarice:macro root.value2 float 0.00003 run scoreboard players get #items avarice.dummy

function avarice:curse/effect/burden/macro with storage avarice:macro root
