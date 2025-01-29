data remove storage avarice:fountain_item root
data remove storage avarice:requested_item root
data modify storage avarice:macro root.advancement set value 1
scoreboard players set #has_paid avarice.dummy 1
function avarice:block/fountain/vfx/payout/main
particle entity_effect{color:[1.000,0.847,0.000,1.00]} ~ ~1 ~ 0.5 0.5 0.5 0.5 25 normal
playsound avarice:block.fountain.payout block @a[distance=..16]

execute if score #punishment avarice.dummy matches 10 run gamerule doDaylightCycle true
execute if score #punishment avarice.dummy matches 10 run scoreboard players set #day_10_relief avarice.dummy 1
execute if score #punishment avarice.dummy matches 10 run scoreboard players remove #punishment avarice.dummy 1
execute as @n[type=minecraft:item_display,tag=avarice.fountain] run function avarice:block/fountain/state/main

scoreboard players add #streak avarice.dummy 1
execute if score #streak avarice.dummy matches 2.. run title @a actionbar {"translate": "ui.avarice.streak", "color": "yellow", "with": [{"score": {"name": "#streak", "objective": "avarice.dummy"}, "color": "gold"}]}
execute if score #streak avarice.dummy matches 10.. run advancement grant @a[gamemode=!spectator] until avarice:avarice/streak
execute if score #streak avarice.dummy matches 25.. run advancement grant @a[gamemode=!spectator] until avarice:avarice/high_streak
