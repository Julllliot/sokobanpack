# ## logic for moving the player
#
# @context positioned as @a [...] on attacker

data remove entity @n[type=interaction,tag=player,distance=..8] attack

function sokoban:script/move/player/get_dir
execute as @n[type=marker,tag=player,distance=..8] at @s store success score #valid_move n run function sokoban:script/move/obj/valid_move with storage sokoban:temp temp.move
execute if score #valid_move n matches 0 run return run playsound block.note_block.bass master @a
execute unless function sokoban:script/move/player/valid_move run return run playsound block.note_block.bass master @a
execute as @n[type=marker,tag=player,distance=..8] at @s run function sokoban:script/move/player/set with storage sokoban:temp temp.move

execute store result storage sokoban:temp temp.move.sound_id int 1 run scoreboard players get @n[type=marker,tag=player,distance=..20] id
function sokoban:sound/player/step with storage sokoban:temp temp.move

function sokoban:lvl/win/condition

data remove storage sokoban:temp temp
