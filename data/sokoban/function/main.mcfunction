# ## Main reload function
#
# @within #load

function sokoban:init
data remove storage sokoban:temp temp
scoreboard players reset #temp
effect give @a saturation infinite 0 true
