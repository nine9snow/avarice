item modify entity @s[gamemode=!creative] weapon.mainhand avarice:reduce_count
execute store result storage avarice:fountain_item root.requested_count int 1 run scoreboard players remove #items avarice.dummy 1
execute store result storage avarice:requested_item root.requested_count int 1 run scoreboard players get #items avarice.dummy

$execute if data entity @s {SelectedItem:{id:"$(id)"}} if score #items avarice.dummy matches 1.. run function avarice:block/fountain/interact/decrease_items with storage avarice:macro root.item
