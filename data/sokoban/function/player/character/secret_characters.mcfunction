# ## sets the rare secret characters
#
# @context at @e[type=marker,tag=player,limit=1]
# @within sokoban:player/set/set_player

execute as @e[type=marker,tag=player,limit=1] run scoreboard players set @s id 4
function sokoban:player/set/interaction
data remove storage sokoban:temp temp

execute store result score #temp n run random value 0..1
execute if score #temp n matches 0 run return run function sokoban:player/character/secret/pombo
function sokoban:player/character/secret/herniq
