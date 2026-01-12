# ## invoked when the player wins the level: all movable_obj are in their respective tile
#
# @context any
# @within sokoban:lvl/win/condition

kill @e[type=interaction,tag=player,limit=1]
playsound block.note_block.harp
