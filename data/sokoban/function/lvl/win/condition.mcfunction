# ## to finish the level logic
#
# @context if function
# @within sokoban:script/move/player/move_player

scoreboard players set #obj_in_place n 0
scoreboard players set #obj_total n 0
execute as @e[type=marker,tag=movable_tinted_obj] run scoreboard players add #obj_total n 1
execute as @e[type=marker,tag=movable_tinted_obj] at @s positioned ~ ~-1 ~ if score @s id = @n[type=marker,tag=tinted_tile,distance=...1] id run scoreboard players add #obj_in_place n 1
execute if score #obj_in_place n = #obj_total n run return 1
