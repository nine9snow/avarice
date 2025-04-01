execute store result score #temp avarice.dummy run random value 1..6 avarice:stat
$execute if items entity @s $(slot) #avarice:inapplicable store result score #temp avarice.dummy run random value 1..5 avarice:stat

$execute if score #temp avarice.dummy matches 1 run item modify entity @s $(slot) avarice:stat/nimble
$execute if score #temp avarice.dummy matches 2 run item modify entity @s $(slot) avarice:stat/toxic
$execute if score #temp avarice.dummy matches 3 run item modify entity @s $(slot) avarice:stat/pointy
$execute if score #temp avarice.dummy matches 4 run item modify entity @s $(slot) avarice:stat/dispelling
$execute if score #temp avarice.dummy matches 5 run item modify entity @s $(slot) avarice:stat/tough
$execute if score #temp avarice.dummy matches 6 run item modify entity @s $(slot) avarice:stat/swift
