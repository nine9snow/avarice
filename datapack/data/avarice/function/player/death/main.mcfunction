advancement revoke @s only avarice:technical/death
tag @s add avarice.respawn_check
tag @s remove avarice.miser_pending
execute if entity @s[gamemode=!adventure,gamemode=!survival] run return 0

execute if data storage avarice:config {permadeath: "true"} if entity @s[team=] run team join avarice.dead_players

xp add @s -100 points
function avarice:player/death/vanishing/main
execute unless data entity @s Inventory[0] unless data entity @s equipment run return run function avarice:player/death/finish

tag @s add avarice.dying
data modify storage avarice:macro root.death_items.inventory set from entity @s Inventory
data modify storage avarice:macro root.death_items.equipment set from entity @s equipment

function avarice:player/death/position/main

tag @s remove avarice.dying
clear @s
function avarice:player/death/finish
