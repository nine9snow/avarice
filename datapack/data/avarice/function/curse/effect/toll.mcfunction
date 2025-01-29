playsound avarice:curse.toll neutral @a[distance=..16]
particle minecraft:dust{color:[1.000,0.949,0.212],scale:1} ~ ~ ~ 0.2 0.2 0.2 1 5 normal

execute store result score #temp avarice.dummy run data get entity @s Item.count
scoreboard players remove #temp avarice.dummy 1
execute if score #temp avarice.dummy matches 0 run kill @s
execute unless score #temp avarice.dummy matches 0 store result entity @s Item.count int 1 run scoreboard players get #temp avarice.dummy
