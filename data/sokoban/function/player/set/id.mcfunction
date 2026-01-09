# @context any or @e[type=marker,tag=id_sorter,limit=1,sort=random]
# @within sokoban:player/set/main
# @macros
#   type: (int) 0..3
#   rnd: (bool) choose random character

function sokoban:util/sort4id

$data modify storage sokoban:temp temp.character set value $(rnd)
execute store success score #compare_str bool run data modify storage sokoban:temp temp.character set value 1
# if rnd==true
execute as @e[type=marker,tag=id_sorter,limit=1,sort=random] if score #compare_str bool matches 0 run return run function sokoban:player/set/id_rnd

$execute as @e[type=marker,tag=player,limit=1] run scoreboard players set @s id $(type)
execute store result storage sokoban:temp temp.player_id int 1 run scoreboard players get @e[type=marker,tag=player,limit=1] id
