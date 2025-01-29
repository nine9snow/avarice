execute if entity @s[tag=avarice.block] run function avarice:block/second_clock

execute if entity @s[type=#avarice:needs_processing,tag=!avarice.processed,tag=!smithed.entity] run function avarice:entity/processing
execute if entity @s[tag=avarice.has_custom_effects] run function avarice:entity/custom_effects/second_clock
