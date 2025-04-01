tag @s remove avarice.spinning
execute on vehicle run data modify entity @s item.components."minecraft:item_model" set value "avarice:gachapon/main"
execute positioned ~ ~1.15 ~ run kill @n[type=minecraft:item_display,tag=avarice.gachapon_display]

execute positioned ^ ^ ^0.75 positioned ~ ~0.5 ~ run function avarice:block/gachapon/output/reward
tag @s remove avarice.archery_upgrade
tag @s remove avarice.stone_upgrade
tag @s remove avarice.iron_upgrade
tag @s remove avarice.gold_upgrade
tag @s remove avarice.diamond_upgrade
tag @s remove avarice.netherite_upgrade
