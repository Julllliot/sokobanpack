# @context any
# @within sokoban:init

execute positioned as @e[type=marker,tag=player] run fill ~ ~1 ~ ~ ~ ~ air
kill @e[type=marker,tag=player]
