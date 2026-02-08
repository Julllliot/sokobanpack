#
# ## sets all movable pot markers' id
#
# @within sokoban:obj/movable_tinted_pot/set_rnd

#execute store result storage sokoban:temp flower_id[-1] int 1 run scoreboard players get @s id

function sokoban:util/sort4id

$execute as @e[type=marker,tag=id_sorter,sort=random,limit=$(qty)] run function sokoban:obj/movable_tinted_pot/set/id_rnd_handling

