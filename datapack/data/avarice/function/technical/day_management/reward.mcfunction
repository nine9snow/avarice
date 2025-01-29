execute unless score #day_10_relief avarice.dummy matches 1 if score #punishment avarice.dummy matches 1.. run scoreboard players remove #punishment avarice.dummy 1
scoreboard players reset #day_10_relief avarice.dummy
execute as @a[predicate=avarice:holding_greedy_tool] run function avarice:player/greedy_tool/refresh
execute as @a at @s run playsound avarice:block.fountain.new_request block @s
