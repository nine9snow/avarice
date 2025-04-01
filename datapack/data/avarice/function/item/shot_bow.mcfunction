tag @s remove avarice.shot_crossbow
scoreboard players reset @s avarice.shot_bow

execute if items entity @s weapon.* #avarice:inapplicable[minecraft:custom_data~{avarice:{tier:{stat: "faulty"}}}] as @e[type=#minecraft:arrows,nbt={life:0s}] if data entity @s weapon.components."minecraft:custom_data".avarice.tier{stat: "faulty"} run return run function avarice:item/tiers/effects/faulty_bow
execute if items entity @s weapon.* #avarice:inapplicable[minecraft:custom_data~{avarice:{tier:{stat: "pointy"}}}] as @e[type=#minecraft:arrows,nbt={life:0s}] if data entity @s weapon.components."minecraft:custom_data".avarice.tier{stat: "pointy"} run return run function avarice:item/tiers/effects/pointy_bow
