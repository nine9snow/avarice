execute unless score #punishment avarice.dummy matches 10 run scoreboard players add #punishment avarice.dummy 1
execute unless score #punishment avarice.dummy matches 10 run scoreboard players add #defecit avarice.dummy 1

execute as @a[predicate=avarice:holding_greedy_tool] run function avarice:player/greedy_tool/refresh

execute if score #streak avarice.dummy matches 2.. run title @a actionbar {"translate": "ui.avarice.streak_lost", "color": "red"}
scoreboard players set #streak avarice.dummy 0
