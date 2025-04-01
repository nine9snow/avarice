$execute if items entity @s armor.head minecraft:$(id)_helmet run function avarice:item/upgrades/armor/slot {slot: "head"}
$execute if items entity @s armor.chest minecraft:$(id)_chestplate run function avarice:item/upgrades/armor/slot {slot: "chest"}
$execute if items entity @s armor.legs minecraft:$(id)_leggings run function avarice:item/upgrades/armor/slot {slot: "legs"}
$execute if items entity @s armor.feet minecraft:$(id)_boots run function avarice:item/upgrades/armor/slot {slot: "feet"}
