execute store result score #temp avarice.dummy run random value 1..6 avarice:stat
$execute if items entity @s $(slot) #avarice:inapplicable store result score #temp avarice.dummy run random value 1..5 avarice:stat

$execute if score #temp avarice.dummy matches 1 run item modify entity @s $(slot) avarice:stat/encumbering
$execute if score #temp avarice.dummy matches 2 run item modify entity @s $(slot) avarice:stat/prickly
$execute if score #temp avarice.dummy matches 3 run item modify entity @s $(slot) avarice:stat/faulty
$execute if score #temp avarice.dummy matches 4 run item modify entity @s $(slot) avarice:stat/unstable
$execute if score #temp avarice.dummy matches 5 run item modify entity @s $(slot) avarice:stat/weak
$execute if score #temp avarice.dummy matches 6 run item modify entity @s $(slot) avarice:stat/heavy
