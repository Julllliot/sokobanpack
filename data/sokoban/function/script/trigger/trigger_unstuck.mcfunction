# ## unstuck player in soft lock
#
# @context trigger

scoreboard players reset @s unstuck
function sokoban:item/give_lvl_options
scoreboard players enable @s unstuck
