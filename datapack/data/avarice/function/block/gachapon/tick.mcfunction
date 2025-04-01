scoreboard players operation #mod avarice.dummy = @s avarice.dummy
scoreboard players operation #mod avarice.dummy %= #3 avarice.dummy
execute if score #mod avarice.dummy matches 0 positioned ~ ~1.15 ~ run loot replace entity @n[type=minecraft:item_display,tag=avarice.gachapon_display] container.0 loot avarice:gameplay/gachapon/display

execute if predicate avarice:chance/0.5 run particle minecraft:crit ~ ~1 ~ 0.15 0.15 0.15 0 1 normal
scoreboard players remove @s avarice.dummy 1
execute if score @s avarice.dummy matches 0 run function avarice:block/gachapon/output/main
