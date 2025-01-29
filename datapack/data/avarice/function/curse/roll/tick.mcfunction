scoreboard players add #curse_display avarice.dummy 1
execute if score #curse_display avarice.dummy matches 10.. run scoreboard players set #curse_display avarice.dummy 1
function avarice:curse/roll/list

scoreboard players remove #curse_wheel avarice.dummy 1
execute if score #curse_wheel avarice.dummy matches 0 run function avarice:curse/roll/finish
