# ## to lose the level
#
# @context at @e[type=marker,tag=player,limit=1] positioned ~ ~1.65 ~
# @within sokoban:script/move/player/move_player

kill @e[type=interaction,tag=player,limit=1]
title @a actionbar {"text":"FAIL: out of moves!","color":"red"}
data modify entity @n[type=text_display,distance=...1] text set value '§cOut of moves!'
playsound block.note_block.banjo
