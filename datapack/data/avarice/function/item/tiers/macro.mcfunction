$attribute @s $(stat) modifier remove avarice:head
$attribute @s $(stat) modifier remove avarice:chest
$attribute @s $(stat) modifier remove avarice:legs
$attribute @s $(stat) modifier remove avarice:feet

$execute if items entity @s armor.head #avarice:modified[minecraft:custom_data~{avarice:{tier:{stat:"$(modifier)"}}}] run attribute @s $(stat) modifier add avarice:head $(armor_value) $(operation)
$execute if items entity @s armor.chest #avarice:modified[minecraft:custom_data~{avarice:{tier:{stat:"$(modifier)"}}}] run attribute @s $(stat) modifier add avarice:chest $(armor_value) $(operation)
$execute if items entity @s armor.legs #avarice:modified[minecraft:custom_data~{avarice:{tier:{stat:"$(modifier)"}}}] run attribute @s $(stat) modifier add avarice:legs $(armor_value) $(operation)
$execute if items entity @s armor.feet #avarice:modified[minecraft:custom_data~{avarice:{tier:{stat:"$(modifier)"}}}] run attribute @s $(stat) modifier add avarice:feet $(armor_value) $(operation)
$execute if items entity @s weapon.* #avarice:tool_locks/any[minecraft:custom_data~{avarice:{tier:{stat:"$(modifier)"}}}] run attribute @s $(stat) modifier add avarice:$(type)_tier $(tool_value) $(operation)
