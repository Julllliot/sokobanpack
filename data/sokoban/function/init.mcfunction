# ## Reinitializes all game objects and data
#
# @context any
# @within sokoban:load

function sokoban:player/init
function sokoban:obj/movable_pot/init
function sokoban:obj/tinted_tile/init
kill @e[tag=sokoban.entity]

