# ## invoked when the player wins the level: all movable_tinted_obj are in their respective tile and score #player_moves >= 0
#
# @context at @e[type=marker,tag=player,limit=1] positioned ~ ~1.65 ~
# @within sokoban:script/move/player/move_player
# @usign storage sokoban:data dump.lvl

kill @e[type=interaction,tag=player,limit=1,dy=-1]
data modify entity @n[type=text_display,distance=...1] text set value '§aLevel completed!'
schedule function sokoban:util/hide_player_text_display 3s
playsound block.note_block.harp

execute if entity @a[limit=1,tag=lost_trophy] run return run tellraw @a ["Your moves score: ",{"score":{"name":"$total_moves","objective":"n"}}, "\nBest score: ",{"score":{"name":"$best_moves","objective":"n"}}, "\nTry to get the minimum moves for this level to earn a trophy!"]
tellraw @a ["Your moves score: ",{"score":{"name":"$total_moves","objective":"n"}}, "\nBest score: ",{"score":{"name":"$best_moves","objective":"n"}}, "\nYou got the best score!"]

$execute if data storage sokoban:data dump.player.trophy.lvl_$(current) run return 0
give @a[limit=1,tag=!ignore] totem_of_undying[item_name="Golden Trophy"]
$data modify storage sokoban:data dump.player.trophy.lvl_$(current) set value true
