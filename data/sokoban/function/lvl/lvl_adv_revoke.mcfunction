# ## revokes advancements related to levels
#
# @context any
# @within sokoban:lvl/lvl_reset
# @within sokoban:lvl/lvl_select

execute as @a[advancements={sokoban:lvl_reset=true}] run advancement revoke @s only sokoban:lvl_reset
execute as @a[advancements={sokoban:lvl_select=true}] run advancement revoke @s only sokoban:lvl_select
execute as @a[advancements={sokoban:tp_warp_room=true}] run advancement revoke @s only sokoban:tp_warp_room
