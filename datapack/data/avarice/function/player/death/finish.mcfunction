execute if data storage avarice:config {permadeath: "false"} run return 0

gamemode spectator @s
execute if entity @s[team=] run team join avarice.dead_players
function avarice:curse/reset_effects
