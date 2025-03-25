execute unless block ~ ~-1 ~ minecraft:magenta_glazed_terracotta align xyz run summon item_display ~0.5 ~ ~0.5 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:dirt",count:1,components:{"minecraft:item_model":"avarice:lockbox/unopened"}},Tags:["smithed.strict","avarice.lockbox","avarice.block"],Passengers:[{id:"minecraft:interaction",width:1.01f,height:1.01f,response:1b,Tags:["smithed.strict","avarice.lockbox"]}],view_range:4f}

execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=north] align xyz run summon item_display ~0.5 ~ ~0.5 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:dirt",count:1,components:{"minecraft:item_model":"avarice:lockbox/unopened"}},Tags:["smithed.strict","avarice.lockbox","avarice.block"],Passengers:[{id:"minecraft:interaction",width:1.01f,height:1.01f,response:1b,Tags:["smithed.strict","avarice.lockbox"]}],view_range:4f}
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=east] align xyz run summon item_display ~0.5 ~ ~0.5 {Rotation:[90f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:dirt",count:1,components:{"minecraft:item_model":"avarice:lockbox/unopened"}},Tags:["smithed.strict","avarice.lockbox","avarice.block"],Passengers:[{id:"minecraft:interaction",width:1.01f,height:1.01f,response:1b,Tags:["smithed.strict","avarice.lockbox"]}],view_range:4f}
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=south] align xyz run summon item_display ~0.5 ~ ~0.5 {Rotation:[180f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:dirt",count:1,components:{"minecraft:item_model":"avarice:lockbox/unopened"}},Tags:["smithed.strict","avarice.lockbox","avarice.block"],Passengers:[{id:"minecraft:interaction",width:1.01f,height:1.01f,response:1b,Tags:["smithed.strict","avarice.lockbox"]}],view_range:4f}
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=west] align xyz run summon item_display ~0.5 ~ ~0.5 {Rotation:[270f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:dirt",count:1,components:{"minecraft:item_model":"avarice:lockbox/unopened"}},Tags:["smithed.strict","avarice.lockbox","avarice.block"],Passengers:[{id:"minecraft:interaction",width:1.01f,height:1.01f,response:1b,Tags:["smithed.strict","avarice.lockbox"]}],view_range:4f}

execute align xyz run summon item_display ~0.5 ~0.5 ~0.5 {item:{id:"minecraft:dirt",count:1,components:{"minecraft:item_model":"avarice:key_of_the_miser"}},billboard:"center",Tags:["smithed.strict","avarice.lockbox_display","avarice.block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.15f,0f],scale:[0.5f,0.5f,0.5f]},item_display: "fixed"}
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=minecraft:item_display,tag=avarice.lockbox_display] run function avarice:block/lockbox/display

setblock ~ ~ ~ minecraft:barrier
execute if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta run setblock ~ ~-1 ~ minecraft:mud_bricks
