# ## sets all tile's id
#
# @within sokoban:obj/tinted_tile/set/set_tinted_tile
# @macros storage sokoban:temp temp
#   qty: int
#   id: int

$scoreboard players operation @e[type=marker,tag=tinted_tile,tag=so.marker_id$(id),limit=1] id = @e[type=marker,tag=movable_tinted_obj,tag=so.marker_id$(id),limit=1] id

scoreboard players add #temp id 1
execute store result storage sokoban:temp temp.id int 1 run scoreboard players get #temp id
scoreboard players add #for n 1
$execute unless score #for n matches $(qty) run return run function sokoban:obj/tinted_tile/set/id with storage sokoban:temp temp
