scoreboard players reset @s avarice.dummy
playsound avarice:block.lockbox.close block @a[distance=..16]
data modify entity @s item.components."minecraft:item_model" set value "avarice:lockbox/unopened"

tag @s remove avarice.opening
tag @s remove avarice.opening_charity
tag @s remove avarice.opening_miser

execute align xyz run summon item_display ~0.5 ~0.5 ~0.5 {item:{id:"minecraft:dirt",count:1,components:{"minecraft:item_model":"avarice:key_of_the_miser"}},billboard:"center",Tags:["smithed.strict","avarice.lockbox_display","avarice.block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.15f,0f],scale:[0.5f,0.5f,0.5f]}}
