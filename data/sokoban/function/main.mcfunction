# ## Main reload function
#
# @within #load

function sokoban:init

scoreboard players reset #temp

function sokoban:init_data
data remove storage sokoban:temp temp
