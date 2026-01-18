# ## invoked when the player wins the level: all movable_tinted_obj are in their respective tile and score #player_moves >= 0
#
# @context at @e[type=marker,tag=player,limit=1] positioned ~ ~1.65 ~
# @within sokoban:script/move/player/move_player

kill @e[type=interaction,tag=player,limit=1,dy=-1]
kill @n[type=text_display,distance=...1]
title @a actionbar {"text":"YOU WIN!","color":"green"}

playsound block.note_block.harp
