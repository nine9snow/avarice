tag @s add avarice.spinning
data modify storage avarice:macro root.success set value 1
execute on vehicle run data modify entity @s item.components."minecraft:item_model" set value "avarice:gachapon/spinning"
scoreboard players set @s avarice.dummy 60
execute positioned ~ ~1.15 ~ run function avarice:block/gachapon/display
playsound avarice:block.gachapon.insert block @a[distance=..16]
playsound avarice:block.gachapon.roll block @a[distance=..16]

execute if score #archery avarice.dummy matches 1 run tag @s add avarice.archery_upgrade
execute if score #stone avarice.dummy matches 1 run tag @s add avarice.stone_upgrade
execute if score #iron avarice.dummy matches 1 run tag @s add avarice.iron_upgrade
execute if score #gold avarice.dummy matches 1 run tag @s add avarice.gold_upgrade
execute if score #diamond avarice.dummy matches 1 run tag @s add avarice.diamond_upgrade
execute if score #netherite avarice.dummy matches 1 run tag @s add avarice.netherite_upgrade
