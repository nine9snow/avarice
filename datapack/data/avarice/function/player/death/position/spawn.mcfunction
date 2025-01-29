execute align xyz run summon minecraft:item_display ~0.5 ~ ~0.5 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:dirt",count:0,components:{"minecraft:item_model":"avarice:death_urn"}},Tags:["smithed.strict","avarice.death_urn"],Passengers:[{id:"minecraft:interaction",width:0.9f,height:0.8f,response:1b,Tags:["smithed.strict","avarice.death_urn"]}]}
execute align xyz run summon minecraft:text_display ~0.5 ~1.25 ~0.5 {text:'{"selector":"@p[tag=avarice.dying]"}',billboard:"center",Tags:["smithed.strict","avarice.death_urn"]}
execute as @n[type=minecraft:item_display,tag=avarice.death_urn] run data modify entity @s item.components."minecraft:custom_data".items set from storage avarice:macro root.items

execute unless block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:air
