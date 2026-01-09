# @within sokoban:player/set/id

scoreboard players operation @e[type=marker,tag=player,limit=1] id = @s id
execute store result storage sokoban:temp temp.player_id int 1 run scoreboard players get @e[type=marker,tag=player,limit=1] id
