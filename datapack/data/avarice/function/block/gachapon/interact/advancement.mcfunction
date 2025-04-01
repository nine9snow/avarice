data remove storage avarice:macro root
data modify storage avarice:macro root.item set from entity @s SelectedItem
data modify storage avarice:macro root.uuid set from entity @s UUID

execute store success score #archery avarice.dummy if entity @s[tag=avarice.archery_upgrade]
execute store success score #stone avarice.dummy if entity @s[tag=avarice.stone_upgrade]
execute store success score #iron avarice.dummy if entity @s[tag=avarice.iron_upgrade]
execute store success score #gold avarice.dummy if entity @s[tag=avarice.gold_upgrade]
execute store success score #diamond avarice.dummy if entity @s[tag=avarice.diamond_upgrade]
execute store success score #netherite avarice.dummy if entity @s[tag=avarice.netherite_upgrade]

advancement revoke @s only avarice:technical/interact_with_gachapon
execute as @n[type=minecraft:interaction,tag=avarice.gachapon,nbt={interaction:{}}] at @s run function avarice:block/gachapon/interact/validate
execute if data storage avarice:macro root{success: 1} run item modify entity @s[gamemode=!creative] weapon.mainhand avarice:reduce_count
execute if data storage avarice:macro root{success: 1} run advancement grant @s only avarice:avarice/use_gachapon
