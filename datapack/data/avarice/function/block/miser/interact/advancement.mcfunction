data remove storage avarice:macro root
data modify storage avarice:macro root.item set from entity @s SelectedItem

advancement revoke @s only avarice:technical/interact_with_miser
execute as @n[type=minecraft:interaction,tag=avarice.miser,nbt={interaction:{}}] at @s run function avarice:block/miser/interact/validate
execute if data storage avarice:macro root{success: 1} unless entity @s[gamemode=creative] run function avarice:block/miser/interact/flint_and_steel
execute if data storage avarice:macro root{success: 2} run item modify entity @s[gamemode=!creative] weapon.mainhand avarice:reduce_count
execute if data storage avarice:macro root{advancement: 1} run tag @s add avarice.miser_pending
