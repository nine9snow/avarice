execute store result score #players avarice.dummy if entity @a[gamemode=!spectator]
execute if score #players avarice.dummy matches 1.. run scoreboard players remove #players avarice.dummy 1
execute if score #players avarice.dummy matches 9.. run scoreboard players set #players avarice.dummy 8

execute unless data storage avarice:requested_item {root:{reduce_scaling: "full"}} if score #players avarice.dummy matches 1.. run function avarice:requests/validate/scaling
execute store result storage avarice:requested_item root.requested_count int 1 run scoreboard players get #item_count avarice.dummy
