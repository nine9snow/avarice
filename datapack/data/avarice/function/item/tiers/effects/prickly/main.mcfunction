execute store result score #slot avarice.dummy run random value 1..5 avarice:slot
execute if score #slot avarice.dummy matches 1 if items entity @s armor.head #avarice:modified[minecraft:custom_data~{avarice: {tier: {stat: "prickly"}}}] run function avarice:item/tiers/effects/prickly/damage
execute if score #slot avarice.dummy matches 2 if items entity @s armor.chest #avarice:modified[minecraft:custom_data~{avarice: {tier: {stat: "prickly"}}}] run function avarice:item/tiers/effects/prickly/damage
execute if score #slot avarice.dummy matches 3 if items entity @s armor.legs #avarice:modified[minecraft:custom_data~{avarice: {tier: {stat: "prickly"}}}] run function avarice:item/tiers/effects/prickly/damage
execute if score #slot avarice.dummy matches 4 if items entity @s armor.feet #avarice:modified[minecraft:custom_data~{avarice: {tier: {stat: "prickly"}}}] run function avarice:item/tiers/effects/prickly/damage
execute if score #slot avarice.dummy matches 5 if items entity @s weapon.mainhand #avarice:modified[minecraft:custom_data~{avarice: {tier: {stat: "prickly"}}}] run function avarice:item/tiers/effects/prickly/damage
