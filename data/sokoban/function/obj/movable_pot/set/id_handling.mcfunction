#
# ## set id to marker and tag it
#
# @within sokoban:obj/movable_pot/set_id

scoreboard players operation @e[type=marker,tag=movable_pot,tag=without_id,limit=1,sort=random] id = @s id

execute as @e[type=marker,tag=movable_pot,tag=without_id,scores={id=0..3},limit=1] run tag @s remove without_id
