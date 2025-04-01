execute unless predicate avarice:chance/0.2 run return 0

execute store result score #slot avarice.dummy run random value 1..5 avarice:slot
execute if score #slot avarice.dummy matches 1 if items entity @s armor.head * run function avarice:item/tiers/effects/dispelling/remove {slot: "head"}
execute if score #slot avarice.dummy matches 2 if items entity @s armor.chest * run function avarice:item/tiers/effects/dispelling/remove {slot: "chest"}
execute if score #slot avarice.dummy matches 3 if items entity @s armor.legs * run function avarice:item/tiers/effects/dispelling/remove {slot: "legs"}
execute if score #slot avarice.dummy matches 4 if items entity @s armor.feet * run function avarice:item/tiers/effects/dispelling/remove {slot: "feet"}
execute if score #slot avarice.dummy matches 5 if items entity @s weapon.mainhand * run function avarice:item/tiers/effects/dispelling/hand
