data modify entity @s item.components."minecraft:item_model" set value "avarice:miser/rewarding"
tag @s remove avarice.ignited

particle entity_effect{color:[1.000,0.847,0.000,1.00]} ~ ~2 ~ 0.33 0.33 0.33 0.5 25 normal
playsound avarice:block.miser.complete block @a[distance=..16]

tag @s add avarice.rewarding
tag @s add avarice.delay
scoreboard players set @s avarice.dummy 1
execute store result score #temp avarice.dummy if entity @a[gamemode=!spectator,distance=..24]
scoreboard players operation @s avarice.dummy += #temp avarice.dummy

scoreboard players operation #temp avarice.dummy = #punishment avarice.dummy
scoreboard players operation #temp avarice.dummy /= #2 avarice.dummy
scoreboard players operation @s avarice.dummy += #temp avarice.dummy

advancement grant @a[tag=avarice.miser_pending] until avarice:avarice/complete_miser
tag @a[tag=avarice.miser_pending] remove avarice.miser_pending
