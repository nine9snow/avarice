execute if predicate avarice:chance/0.33 run loot spawn ~ ~2.5 ~ loot avarice:gameplay/coin_count
scoreboard players remove #rolls avarice.dummy 1
execute if score #rolls avarice.dummy matches 1.. run function avarice:block/fountain/interact/streak
