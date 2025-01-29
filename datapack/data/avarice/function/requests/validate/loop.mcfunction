execute store result storage avarice:macro root.iterate int 1 run scoreboard players get #iterate avarice.dummy
function avarice:requests/validate/macro with storage avarice:macro root

scoreboard players add #iterate avarice.dummy 1
execute unless score #iterate avarice.dummy > #count avarice.dummy run function avarice:requests/validate/loop
