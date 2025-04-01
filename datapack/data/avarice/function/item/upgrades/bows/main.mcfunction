advancement revoke @s only avarice:technical/check_bow_locks
data modify storage avarice:macro root.uuid set from entity @s UUID

execute if items entity @s weapon.mainhand #avarice:bows run data modify storage avarice:macro root.item set from entity @s SelectedItem
execute if items entity @s weapon.mainhand #avarice:bows run function avarice:item/upgrades/bows/drop {hand: "mainhand"}
execute if items entity @s weapon.offhand #avarice:bows run data modify storage avarice:macro root.item set from entity @s equipment.offhand
execute if items entity @s weapon.offhand #avarice:bows run function avarice:item/upgrades/bows/drop {hand: "offhand"}
