# HOW TO ADD REQUESTS!!!
# ----------------------

# id - the item ID
# model - the model that displays above the fountain; points to filepath "assets/<minecraft or mod>/items/"
# translation - the translation string to use; recommended to change it to a custom one for items that repeat a name (i.e. music discs)
# requests currently do not support components, but modded items should work ^^

# count - can either be 1 or [x, y] to set a range; cannot be other ints; the 2 numbers within the range must be different
# days - a range of days; caps at day 100, so putting 100 as the last number; the 2 numbers within the range must be different

# reduce_scaling - can either be "partial" or "full"
# the requested count is increased based on active players
# partial reduction halves the increase, while full reduction prevents increase

# TEMPLATE
data modify storage avarice:requests root.list append value {id: "minecraft:stick", model: "minecraft:stick", translation: "item.minecraft.stick", count: [16, 32], days: [0, 1]}
data modify storage avarice:requests root.list append value {id: "minecraft:apple", model: "minecraft:apple", translation: "item.minecraft.apple", count: [1, 3], days: [3, 5], reduce_scaling: "partial"}
data modify storage avarice:requests root.list append value {id: "minecraft:cake", model: "minecraft:cake", translation: "block.minecraft.cake", count: 1, days: [7, 12], reduce_scaling: "full"}

# HOW TO REMOVE REQUESTS!!!
# -------------------------

# you can see all requests at the filepath "data/avarice/function/requests/generate"
# request indexes start with the first one being 0
# the template below removes the 8th request

# TEMPLATE
data remove storage avarice:requests root.list[7]

# you can additionally remove all requests
# make sure to put this before your own requests or else they will get deleted too
data remove storage avarice:requests root.list

# if no requests exist, the fountain will always ask for sticks as a fallback
