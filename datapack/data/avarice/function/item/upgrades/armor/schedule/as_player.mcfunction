tag @s remove avarice.armor_check

execute if items entity @s armor.* #avarice:armor_locks/iron unless entity @s[tag=avarice.iron_upgrade] run function avarice:item/upgrades/armor/remove {id: "iron"}
execute if items entity @s armor.* #avarice:armor_locks/gold unless entity @s[tag=avarice.gold_upgrade] run function avarice:item/upgrades/armor/remove {id: "golden"}
execute if items entity @s armor.* #avarice:armor_locks/diamond unless entity @s[tag=avarice.diamond_upgrade] run function avarice:item/upgrades/armor/remove {id: "diamond"}
execute if items entity @s armor.* #avarice:armor_locks/netherite unless entity @s[tag=avarice.netherite_upgrade] run function avarice:item/upgrades/armor/remove {id: "netherite"}

execute if items entity @s armor.* #avarice:armor_locks/any[!minecraft:enchantments={}] unless entity @s[tag=avarice.enchanting_upgrade] run function avarice:item/upgrades/armor/enchants
