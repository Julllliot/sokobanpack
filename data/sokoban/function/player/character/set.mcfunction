# ## Set player character
#
# id 0: skeleton
# id 1: wither_skeleton
# id 2: slime
# id 3: steve
#
# @context as @e[type=marker,tag=player,limit=1]
# @using sokoban:temp temp
# @macros
#   player_id: (int) 0..3

$execute positioned as @s run function sokoban:player/character/$(player_id) with storage sokoban:temp temp
