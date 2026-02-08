# ## go to next level
#
# @context advancement sokoban:lvl_continue

schedule function sokoban:lvl/lvl_adv_revoke 1s
clear @a magenta_glazed_terracotta
execute store result score #temp n run data get storage sokoban:data dump.lvl.current
execute store result storage sokoban:data dump.lvl.current int 1 run scoreboard players add #temp n 1
function sokoban:lvl/set/lvl_set with storage sokoban:data dump.lvl
