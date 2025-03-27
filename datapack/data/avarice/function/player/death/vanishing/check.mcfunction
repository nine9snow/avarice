$execute if data entity @s Inventory[$(slot)].components."minecraft:enchantments"."minecraft:vanishing_curse" run data modify storage avarice:macro root.remove set from entity @s Inventory[$(slot)].Slot
$execute if data entity @s Inventory[$(slot)].components."minecraft:enchantments"."minecraft:vanishing_curse" run function avarice:player/death/vanishing/remove with storage avarice:macro root
