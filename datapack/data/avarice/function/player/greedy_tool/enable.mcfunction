tag @s add avarice.greedy_tool_active

execute if score #punishment avarice.dummy matches 1..2 run function avarice:player/greedy_tool/benefits/stage_1
execute if score #punishment avarice.dummy matches 3..4 run function avarice:player/greedy_tool/benefits/stage_2
execute if score #punishment avarice.dummy matches 5..6 run function avarice:player/greedy_tool/benefits/stage_3
execute if score #punishment avarice.dummy matches 7..8 run function avarice:player/greedy_tool/benefits/stage_4
execute if score #punishment avarice.dummy matches 9..10 run function avarice:player/greedy_tool/benefits/stage_5
