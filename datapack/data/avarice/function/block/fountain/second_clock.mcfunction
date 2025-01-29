scoreboard players reset #temp avarice.dummy
execute store success score #temp avarice.dummy run data modify storage avarice:fountain_item root set from storage avarice:requested_item root
execute if score #temp avarice.dummy matches 1 run function avarice:block/fountain/update/main

execute unless score @s avarice.dummy = #punishment avarice.dummy run function avarice:block/fountain/state/main
