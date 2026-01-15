# ## invoked when the player wins the level: all movable_obj are in their respective tile and score #player_moves >= 0
#
# @context any
# @within sokoban:lvl/win/condition

kill @e[type=interaction,tag=player,limit=1]
	title @a actionbar {"text":"YOU WIN!","color":"green"}
playsound block.note_block.harp
