execute unless score #has_paid avarice.dummy matches 1 run function avarice:technical/day_management/punish
execute if score #has_paid avarice.dummy matches 1 run function avarice:requests/validate/main
execute if score #has_paid avarice.dummy matches 1 run function avarice:technical/day_management/reward

scoreboard players operation #old_day avarice.dummy = #day avarice.dummy
scoreboard players reset #has_paid avarice.dummy

execute if score #punishment avarice.dummy matches 1.. run function avarice:curse/roll/main
