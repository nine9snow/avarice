kill @e[type=#avarice:requests,tag=avarice.requests,distance=..10]
execute if score #items avarice.dummy matches 0 run function avarice:block/fountain/interact/paid
execute unless score #items avarice.dummy matches 0 run function avarice:block/fountain/update/main
