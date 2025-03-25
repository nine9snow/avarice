particle minecraft:sculk_soul ~ ~ ~ 0.5 0.5 0.5 0 16 force
particle minecraft:soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0.03 12 force
playsound avarice:entity.vexed hostile @a[distance=..16]

summon minecraft:vex ~ ~ ~ {life_ticks:600,equipment:{mainhand:{id:"minecraft:wooden_sword",count:1}},drop_chances:{mainhand:0.0},Tags:["avarice.processed"]}
execute if predicate avarice:chance/0.5 run summon minecraft:vex ~ ~ ~ {life_ticks:600,equipment:{mainhand:{id:"minecraft:wooden_sword",count:1}},drop_chances:{mainhand:0.0},Tags:["avarice.processed"]}
execute if predicate avarice:chance/0.5 run summon minecraft:vex ~ ~ ~ {life_ticks:600,equipment:{mainhand:{id:"minecraft:wooden_sword",count:1}},drop_chances:{mainhand:0.0},Tags:["avarice.processed"]}
