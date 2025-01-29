scoreboard players operation @s avarice.dummy = #punishment avarice.dummy
execute store result storage avarice:macro root.model int 1 run scoreboard players get @s avarice.dummy
function avarice:block/fountain/state/macro with storage avarice:macro root
