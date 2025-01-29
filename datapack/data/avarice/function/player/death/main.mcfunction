advancement revoke @s only avarice:technical/death
tag @s add avarice.respawn_check
tag @s remove avarice.miser_pending
execute if entity @s[gamemode=!adventure,gamemode=!survival] run return 0

xp add @s -100 points
function avarice:player/death/vanishing/main
execute unless data entity @s Inventory[0] run return run function avarice:player/death/finish

tag @s add avarice.dying
data modify storage avarice:macro root.items set from entity @s Inventory

function avarice:player/death/position/main

tag @s remove avarice.dying
clear @s
function avarice:player/death/finish
