# shhh, it's a secret (;

#scoreboard players add @s avarice.dummy 1

#execute if score @s avarice.dummy matches 1 run data modify entity @s item.components."minecraft:item_model" set value "avarice:key_of_charity"
#execute if score @s avarice.dummy matches 2 run data modify entity @s item.components."minecraft:item_model" set value "avarice:key_of_the_miser"
#execute if score @s avarice.dummy matches 2 run scoreboard players set @s avarice.dummy 0

loot replace entity @s container.0 loot avarice:gameplay/lockbox_rewards/miser
