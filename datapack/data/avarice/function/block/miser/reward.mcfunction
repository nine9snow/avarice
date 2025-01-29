scoreboard players remove @s avarice.dummy 1
execute if score @s avarice.dummy matches 0 run function avarice:block/miser/delay/set_delay

execute if entity @s[tag=avarice.delay] run return run tag @s remove avarice.delay
particle minecraft:dust_plume ~ ~2 ~ 0.2 0.2 0.2 0.02 4 force
playsound avarice:block.miser.eject_item block @a[distance=..16]

loot spawn ~ ~2 ~ loot avarice:gameplay/miser_rewards
