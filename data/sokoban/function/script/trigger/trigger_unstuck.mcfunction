# ## unstuck player in soft lock
#
# @context /trigger unstuck

scoreboard players reset @s unstuck
function sokoban:player/tp/tp_warp_room
scoreboard players enable @s unstuck
