#
# ## sets all movable pot markers' id
#
# @within sokoban:obj/movable_pot/set_rnd

#execute store result storage sokoban:tmp flower_id[-1] int 1 run scoreboard players get @s id

function sokoban:util/sort4id

$execute as @e[type=marker,tag=id_sorter,sort=random,limit=$(qty)] run function sokoban:obj/movable_pot/set/id_handling

#scoreboard players add #tmp id 1
#execute store result storage sokoban:tmp id int 1 run scoreboard players get #tmp n
#scoreboard players add #for n 1
#$execute unless score #for n matches $(qty) run function sokoban:obj/movable_pot/set_color with storage sokoban:tmp
