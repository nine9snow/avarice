execute store result score #temp avarice.dummy run data get storage avarice:macro root.item.components."minecraft:damage"
scoreboard players add #temp avarice.dummy 3

execute if data storage avarice:macro root.item{id: "minecraft:leather_helmet"} if score #temp avarice.dummy matches 55.. run return run function avarice:curse/effect/sun/break
execute if data storage avarice:macro root.item{id: "minecraft:golden_helmet"} if score #temp avarice.dummy matches 77.. run return run function avarice:curse/effect/sun/break
execute if data storage avarice:macro root.item{id: "minecraft:chainmail_helmet"} if score #temp avarice.dummy matches 165.. run return run function avarice:curse/effect/sun/break
execute if data storage avarice:macro root.item{id: "minecraft:iron_helmet"} if score #temp avarice.dummy matches 165.. run return run function avarice:curse/effect/sun/break
execute if data storage avarice:macro root.item{id: "minecraft:turtle_helmet"} if score #temp avarice.dummy matches 275.. run return run function avarice:curse/effect/sun/break
execute if data storage avarice:macro root.item{id: "minecraft:diamond_helmet"} if score #temp avarice.dummy matches 363.. run return run function avarice:curse/effect/sun/break
execute if data storage avarice:macro root.item{id: "minecraft:netherite_helmet"} if score #temp avarice.dummy matches 407.. run return run function avarice:curse/effect/sun/break

execute store result storage avarice:macro root.damage int 1 run scoreboard players get #temp avarice.dummy
function avarice:curse/effect/sun/macro with storage avarice:macro root
