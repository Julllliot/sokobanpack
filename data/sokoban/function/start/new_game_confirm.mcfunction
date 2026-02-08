# ## confirmation to start new game
#
# @context any
# @within sokoban:start/new_game

tag @s add confirm
tellraw @s [{"text":"Starting a new game ","color":"white"}, {"text":"deletes all ","color":"red"}, {"text":"previous progress. Are you sure?","color":"white"}]
