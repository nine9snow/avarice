function avarice:player/update_slot
execute if items entity @s weapon.mainhand #avarice:modified[minecraft:custom_data~{avarice: {tier: {stat: "prickly"}}}] run damage @s 2 avarice:prickly
