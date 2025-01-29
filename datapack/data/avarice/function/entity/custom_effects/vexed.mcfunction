particle minecraft:sculk_soul ~ ~ ~ 0.5 0.5 0.5 0 16 force
particle minecraft:soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0.03 12 force
playsound avarice:entity.vexed hostile @a[distance=..16]

summon minecraft:vex ~ ~ ~ {LifeTicks:600,HandItems:[{id:"minecraft:wooden_sword",count:1,components:{"minecraft:unbreakable":{}}},{}],HandDropChances:[-327.670F,0.085F]}
execute if predicate avarice:chance/0.5 run summon minecraft:vex ~ ~ ~ {HandItems:[{id:"minecraft:wooden_sword",count:1,components:{"minecraft:unbreakable":{}}},{}],HandDropChances:[-327.670F,0.085F],LifeTicks:600}
execute if predicate avarice:chance/0.5 run summon minecraft:vex ~ ~ ~ {HandItems:[{id:"minecraft:wooden_sword",count:1,components:{"minecraft:unbreakable":{}}},{}],HandDropChances:[-327.670F,0.085F],LifeTicks:600}
