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

scoreboard players remove $player_moves n 1
execute if score $player_moves n matches 0 unless function sokoban:lvl/win/condition as @a[limit=1] at @e[type=marker,tag=player,limit=1] positioned ~ ~1.65 ~ run function sokoban:lvl/win/lost_trophy
execute if function sokoban:lvl/win/condition at @e[type=marker,tag=player,limit=1] positioned ~ ~1.65 ~ run return run function sokoban:lvl/win/success with storage sokoban:data dump.lvl
execute store result storage sokoban:temp temp.move.current_player_moves int 1 run scoreboard players get $player_moves n
execute at @e[type=marker,tag=player,limit=1] run function sokoban:script/move/player/display_player_moves with storage sokoban:temp temp.move

data remove storage sokoban:temp temp
