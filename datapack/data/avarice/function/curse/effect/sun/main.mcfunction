execute positioned over motion_blocking_no_leaves unless entity @s[dy=1000] unless predicate avarice:submerged run return run scoreboard players reset @s avarice.sun_exposure

execute anchored eyes run particle minecraft:rain ^ ^ ^ 0.5 0.5 0.5 0 2 normal
scoreboard players add @s avarice.sun_exposure 1
execute unless score @s avarice.sun_exposure matches 3.. run return 0

data remove storage avarice:macro root.item
data modify storage avarice:macro root.item set from entity @s Inventory[{Slot:103b}]
execute if data storage avarice:macro root.item.id run return run function avarice:curse/effect/sun/durability

damage @s 2 avarice:sun
