execute if entity @s[tag=avarice.holding_tool] unless items entity @s weapon.mainhand #avarice:modified run tag @s remove avarice.holding_tool

# tools
attribute @s minecraft:movement_speed modifier remove avarice:pos_tier
attribute @s minecraft:movement_speed modifier remove avarice:neg_tier
attribute @s minecraft:attack_speed modifier remove avarice:pos_tier
attribute @s minecraft:attack_speed modifier remove avarice:neg_tier
attribute @s minecraft:attack_damage modifier remove avarice:pos_tier
attribute @s minecraft:attack_damage modifier remove avarice:neg_tier
attribute @s minecraft:mining_efficiency modifier remove avarice:pos_tier
attribute @s minecraft:mining_efficiency modifier remove avarice:neg_tier
attribute @s minecraft:armor modifier remove avarice:pos_tier
attribute @s minecraft:armor modifier remove avarice:neg_tier
attribute @s minecraft:armor_toughness modifier remove avarice:pos_tier
attribute @s minecraft:armor_toughness modifier remove avarice:neg_tier

# stats
function avarice:item/tiers/macro {modifier: "encumbering", stat: "minecraft:movement_speed", type: "neg", armor_value: -0.01, tool_value: -0.035, operation: "add_value"}
function avarice:item/tiers/macro {modifier: "nimble", stat: "minecraft:movement_speed", type: "pos", armor_value: 0.01, tool_value: 0.035, operation: "add_value"}

function avarice:item/tiers/macro_no_bows {modifier: "heavy", stat: "minecraft:attack_speed", type: "neg", armor_value: -0.075, tool_value: -0.4, operation: "add_multiplied_base"}
function avarice:item/tiers/macro_no_bows {modifier: "swift", stat: "minecraft:attack_speed", type: "pos", armor_value: 0.075, tool_value: 0.3, operation: "add_multiplied_base"}
execute if items entity @s weapon.* #avarice:modified[minecraft:custom_data~{avarice:{tier:{stat:"heavy"}}}] run attribute @s minecraft:mining_efficiency modifier add avarice:neg_tier -0.3 add_multiplied_base
execute if items entity @s weapon.* #avarice:modified[minecraft:custom_data~{avarice:{tier:{stat:"swift"}}}] run attribute @s minecraft:mining_efficiency modifier add avarice:pos_tier 0.3 add_multiplied_base

function avarice:item/tiers/macro_no_bows {modifier: "faulty", stat: "minecraft:attack_damage", type: "neg", armor_value: -0.5, tool_value: -2, operation: "add_value"}
function avarice:item/tiers/macro_no_bows {modifier: "pointy", stat: "minecraft:attack_damage", type: "pos", armor_value: 0.5, tool_value: 2, operation: "add_value"}

function avarice:item/tiers/macro {modifier: "weak", stat: "minecraft:armor", type: "neg", armor_value: -2, tool_value: -4, operation: "add_value"}
function avarice:item/tiers/macro {modifier: "tough", stat: "minecraft:armor_toughness", type: "pos", armor_value: 2, tool_value: 4, operation: "add_value"}
