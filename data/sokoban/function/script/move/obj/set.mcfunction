# ## to move obj
#
# @context as @n[type=marker,tag=movable_obj,distance=...1] at @s
# @within sokoban:script/move/obj/valid_move
# @using storage sokoban:temp temp.move
# @macros
#   dir: (string) '~x ~ ~z'

$clone ~ ~ ~ ~ ~1 ~ $(dir)
fill ~ ~ ~ ~ ~1 ~ air
$tp @s $(dir)

execute store result storage sokoban:temp temp.move.sound_id int 1 run scoreboard players get @s global.obj_id
function sokoban:sound/obj/step with storage sokoban:temp temp.move
