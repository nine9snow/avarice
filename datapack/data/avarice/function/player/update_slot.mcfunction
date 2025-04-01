advancement revoke @s only avarice:technical/check_item_locks

scoreboard players operation @s avarice.slot = #temp avarice.dummy
execute if predicate avarice:holding_greedy_tool run function avarice:player/greedy_tool/refresh
execute if predicate avarice:no_upgrade_tools run function avarice:item/upgrades/disabled
execute if items entity @s weapon.mainhand #avarice:modified run function avarice:item/tiers/change_hand
