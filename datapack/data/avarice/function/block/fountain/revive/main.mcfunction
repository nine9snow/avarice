tag @s add avarice.reviving
particle minecraft:soul ~ ~1 ~ 0.5 0.75 0.5 0.05 10 force
function avarice:block/fountain/vfx/payout/main
playsound avarice:block.fountain.begin_revive block @a[distance=..16]

execute store success score #temp avarice.dummy run forceload add ~ ~ ~ ~
execute if score #temp avarice.dummy matches 1 run tag @s add avarice.remove_load

data modify storage avarice:macro root.success set value 2
schedule function avarice:block/fountain/revive/scheduled 2s replace
