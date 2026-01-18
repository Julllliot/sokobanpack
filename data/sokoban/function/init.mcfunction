# ## Reinitializes all game objects, schedules and data
#
# @context any
# @within sokoban:load

function sokoban:player/init
function sokoban:obj/movable_tinted_pot/init
function sokoban:obj/movable_pot/init
function sokoban:obj/tinted_tile/init
kill @e[tag=sokoban.entity]

data remove storage sokoban:temp temp

