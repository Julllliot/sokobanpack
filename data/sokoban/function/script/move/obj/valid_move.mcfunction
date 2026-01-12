# ## check if this move is valid
#
# @context as @e[type=marker,tag=player,limit=1] at @s
# @using storage sokoban:temp temp.move
# @macros
#   dir: (string) '~x ~ ~z'
# @output
#   return fail || 1

$execute positioned $(dir) unless entity @n[type=marker,tag=movable_obj,distance=...1] run return 1
$execute positioned ~ ~-1 ~ positioned $(dir) unless block $(dir) #sokoban:valid_tile run return fail
$execute positioned $(dir) unless block $(dir) air run return fail

$execute positioned $(dir) as @n[type=marker,tag=movable_obj,distance=...1] at @s run function sokoban:script/move/obj/set with storage sokoban:temp temp.move
return 1
