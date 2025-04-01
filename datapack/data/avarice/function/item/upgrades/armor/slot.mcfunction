title @s actionbar {translate: "ui.avarice.no_upgrade.armor", color: "red"}
data modify storage avarice:macro root.uuid set from entity @s UUID

$data modify storage avarice:macro root.item set from entity @s equipment.$(slot)
$item replace entity @s armor.$(slot) with minecraft:air
function avarice:item/upgrades/spawn with storage avarice:macro root
