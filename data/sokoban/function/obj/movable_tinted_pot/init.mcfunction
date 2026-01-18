# @context any
# @within sokoban:init

execute positioned as @e[type=marker,tag=movable_tinted_pot] run fill ~ ~1 ~ ~ ~ ~ air
kill @e[type=marker,tag=movable_tinted_pot]

