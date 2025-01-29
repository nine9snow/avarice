execute store result score #day avarice.dummy run time query day
scoreboard players operation #day avarice.dummy -= #defecit avarice.dumm
execute if score #day avarice.dummy matches ..-1 run scoreboard players set #day avarice.dummy 0
execute if score #day avarice.dummy matches 101.. run scoreboard players set #day avarice.dummy 100

execute store result score #count avarice.dummy run data get storage avarice:requests root.list
scoreboard players remove #count avarice.dummy 1
scoreboard players set #iterate avarice.dummy 0

data remove storage avarice:requests root.choices
data modify storage avarice:requests root.choices set value []

function avarice:requests/validate/loop
execute unless data storage avarice:requests root.choices run data modify storage avarice:requests root.choices append value {id: "minecraft:stick", model: "minecraft:stick", translation: "item.minecraft.stick", count: [16, 32], days: [0, 100]}

data remove storage avarice:macro root
execute store result score #temp avarice.dummy run data get storage avarice:requests root.choices
execute store result storage avarice:macro root.maximum int 1 run scoreboard players remove #temp avarice.dummy 1

execute unless score #temp avarice.dummy matches 0 run function avarice:requests/validate/choose with storage avarice:macro root
execute if score #temp avarice.dummy matches 0 run function avarice:requests/validate/update_data {index: 0}
