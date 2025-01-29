execute if predicate avarice:holding_greedy_tool unless entity @s[tag=avarice.greedy_tool_active] run function avarice:player/greedy_tool/enable
execute unless predicate avarice:holding_greedy_tool if entity @s[tag=avarice.greedy_tool_active] run function avarice:player/greedy_tool/disable

execute store result score #temp avarice.dummy run data get entity @s SelectedItemSlot
execute unless score #temp avarice.dummy = @s avarice.slot run function avarice:player/update_slot

execute if score @s avarice.sneeze matches 1.. run scoreboard players remove @s avarice.sneeze 1
execute if score @s avarice.sneeze matches 1 run function avarice:curse/effect/pollen/reset
