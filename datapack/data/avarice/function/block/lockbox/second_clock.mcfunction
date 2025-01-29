scoreboard players remove @s avarice.dummy 1
execute if score @s avarice.dummy matches 1.. run function avarice:block/lockbox/reward
execute if score @s avarice.dummy matches 0 run function avarice:block/lockbox/close
