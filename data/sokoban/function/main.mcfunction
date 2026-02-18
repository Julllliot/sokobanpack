# ## Main reload function
#
# @within #load

data remove storage sokoban:temp temp
scoreboard players reset #temp
tag @a remove confirm
advancement revoke @a only sokoban:lvl_reset
advancement revoke @a only sokoban:lvl_select
advancement revoke @a only sokoban:lvl_continue
advancement revoke @a only sokoban:tp_warp_room
scoreboard players enable @a unstuck
effect give @a saturation infinite 0 true
