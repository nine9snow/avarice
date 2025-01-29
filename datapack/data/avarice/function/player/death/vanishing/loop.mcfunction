execute store result storage avarice:macro root.slot int 1 run scoreboard players get #iterate avarice.dummy
function avarice:player/death/vanishing/check with storage avarice:macro root

scoreboard players remove #iterate avarice.dummy 1
execute if score #iterate avarice.dummy matches 0.. run function avarice:player/death/vanishing/loop
