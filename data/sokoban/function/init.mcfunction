# ## Reinitializes all game objects, entities, schedules and scores
#
# @context any
# @within sokoban:main

function sokoban:player/init
function sokoban:obj/movable_tinted_pot/init
function sokoban:obj/movable_pot/init
function sokoban:obj/tinted_tile/init
function sokoban:script/doors/open/open_door_all
kill @e[tag=sokoban.entity]
scoreboard players reset $total_moves
scoreboard players reset $best_moves
tag @a remove lost_trophy
