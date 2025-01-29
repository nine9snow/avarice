data remove storage avarice:macro root
data modify storage avarice:macro root.item set from entity @s SelectedItem
data modify storage avarice:macro root.uuid set from entity @s UUID

advancement revoke @s only avarice:technical/interact_with_lockbox
execute as @n[type=minecraft:interaction,tag=avarice.lockbox,nbt={interaction:{}}] at @s run function avarice:block/lockbox/interact/validate
execute if data storage avarice:macro root{success: 1} run item modify entity @s[gamemode=!creative] weapon.mainhand avarice:reduce_count
execute if data storage avarice:macro root{advancement: 1} run advancement grant @s until avarice:avarice/open_lockbox_miser
