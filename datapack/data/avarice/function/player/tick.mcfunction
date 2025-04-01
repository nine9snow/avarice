execute if predicate avarice:holding_greedy_tool unless entity @s[tag=avarice.greedy_tool_active] run function avarice:player/greedy_tool/enable
execute unless predicate avarice:holding_greedy_tool if entity @s[tag=avarice.greedy_tool_active] run function avarice:player/greedy_tool/disable
execute if entity @s[tag=avarice.disabled_item] unless predicate avarice:no_upgrade_tools run function avarice:item/upgrades/reset
execute if entity @s[tag=avarice.holding_tool] unless items entity @s weapon.mainhand #avarice:modified run function avarice:item/tiers/calculate

execute store result score #temp avarice.dummy run data get entity @s SelectedItemSlot
execute unless score #temp avarice.dummy = @s avarice.slot run function avarice:player/update_slot_alt

execute if score @s avarice.sneeze matches 1.. run scoreboard players remove @s avarice.sneeze 1
execute if score @s avarice.sneeze matches 1 run function avarice:curse/effect/pollen/reset
execute if score @s avarice.shot_bow matches 1.. run function avarice:item/shot_bow
