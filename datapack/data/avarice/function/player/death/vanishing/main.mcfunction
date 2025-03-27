execute store result score #iterate avarice.dummy run data get entity @s Inventory
scoreboard players remove #iterate avarice.dummy 1
function avarice:player/death/vanishing/loop

execute if data entity @s equipment.head.components."minecraft:enchantments"."minecraft:vanishing_curse" run item replace entity @s armor.head with minecraft:air
execute if data entity @s equipment.chest.components."minecraft:enchantments"."minecraft:vanishing_curse" run item replace entity @s armor.chest with minecraft:air
execute if data entity @s equipment.legs.components."minecraft:enchantments"."minecraft:vanishing_curse" run item replace entity @s armor.legs with minecraft:air
execute if data entity @s equipment.feet.components."minecraft:enchantments"."minecraft:vanishing_curse" run item replace entity @s armor.feet with minecraft:air
execute if data entity @s equipment.offhand.components."minecraft:enchantments"."minecraft:vanishing_curse" run item replace entity @s weapon.offhand with minecraft:air
