item modify entity @s weapon.mainhand avarice:reduce_flint_and_steel
execute store result score #temp avarice.dummy run data get entity @s SelectedItem.components."minecraft:damage"
execute if score #temp avarice.dummy matches 64 run playsound minecraft:entity.item.break player @a[distance=..16]
execute if score #temp avarice.dummy matches 64 run item replace entity @s weapon.mainhand with air
