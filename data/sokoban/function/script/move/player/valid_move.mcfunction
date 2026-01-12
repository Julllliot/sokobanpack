# ## checks if next tile is available to move
#
# @context any
# @output
#   returns 0 || 1

execute as @e[type=marker,tag=player,limit=1] at @s positioned ~ ~-1 ~ run return run function sokoban:script/move/player/valid_move_handling with storage sokoban:temp temp.move
