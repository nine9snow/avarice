data remove storage avarice:macro root
data modify storage avarice:macro root.item set from entity @s SelectedItem

advancement revoke @s only avarice:technical/interact_with_fountain
execute as @n[type=minecraft:interaction,tag=avarice.fountain,nbt={interaction:{}}] at @s run function avarice:block/fountain/interact/validate with storage avarice:macro root.item
execute if data storage avarice:macro {root:{success: 1}} run function avarice:block/fountain/interact/decrease_items with storage avarice:macro root.item
execute if data storage avarice:macro {root:{success: 1}} as @n[type=minecraft:interaction,tag=avarice.fountain] at @s run function avarice:block/fountain/interact/rewrite
execute if data storage avarice:macro {root:{success: 2}} run item modify entity @s[gamemode=!creative] weapon.mainhand avarice:reduce_count
execute if data storage avarice:macro {root:{success: 2}} run tag @s add avarice.reviving
execute if data storage avarice:macro {root:{advancement: 1}} run advancement grant @s until avarice:avarice/first_payment
execute if data storage avarice:macro {root:{paid: 1}} run title @s actionbar {"translate": "ui.avarice.already_paid", "color": "red"}
