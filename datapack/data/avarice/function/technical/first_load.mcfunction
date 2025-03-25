time set 0d
scoreboard players set #installed avarice.dummy 1

data merge storage avarice:config {permadeath: "true"}
gamerule keepInventory true
gamerule spectatorsGenerateChunks false
difficulty hard

execute store result score #day avarice.dummy run time query day
execute store result score #old_day avarice.dummy run time query day

function avarice:requests/validate/main
