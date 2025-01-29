$item modify entity @s armor.head {"function": "minecraft:set_components", "components": {"minecraft:damage": $(damage)}}
stopsound @s player minecraft:item.armor.equip_generic
stopsound @s player minecraft:item.armor.equip_leather
stopsound @s player minecraft:item.armor.equip_chain
stopsound @s player minecraft:item.armor.equip_iron
stopsound @s player minecraft:item.armor.equip_gold
stopsound @s player minecraft:item.armor.equip_diamond
stopsound @s player minecraft:item.armor.equip_netherite
stopsound @s player minecraft:item.armor.equip_turtle

playsound avarice:item.burn player @s
