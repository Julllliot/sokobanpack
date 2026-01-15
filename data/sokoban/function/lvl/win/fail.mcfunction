# ## to lose the level
#
# @context any
# @within sokoban:script/move/player/main

kill @e[type=interaction,tag=player,limit=1]
title @a actionbar {"text":"FAIL: out of moves!","color":"red"}
playsound block.note_block.banjo
