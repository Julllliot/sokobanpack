# @context as @e[type=marker,tag=player,limit=1] at @s positioned ~ ~-1 ~
# @within sokoban:script/move/valid_move
# @using storage sokoban:temp temp.move
# @macros
#   dir: (string) '~x ~ ~z'; move direction

$execute if block $(dir) #sokoban:valid_tile run return 1
