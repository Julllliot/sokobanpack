# ## main function for starting level
#
# @context any
# @using sokoban:data dump.lvl

$execute as @a[tag=!ignore] run function sokoban:lvl/set/lvl_set_$(current)
