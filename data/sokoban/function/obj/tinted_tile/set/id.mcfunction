#
# ## sets all tile's id
#
# @within sokoban:obj/tinted_tile/set/main
# @macros storage sokoban:tmp tmp
#   qty: int
#   id: int

$scoreboard players operation @e[type=marker,tag=tinted_tile,tag=so.marker_id$(id),limit=1] id = @e[type=marker,tag=movable_obj,tag=so.marker_id$(id),limit=1] id

scoreboard players add #tmp id 1
execute store result storage sokoban:tmp tmp.id int 1 run scoreboard players get #tmp id
scoreboard players add #for n 1
$execute unless score #for n matches $(qty) run return run function sokoban:obj/tinted_tile/set/id with storage sokoban:tmp tmp
