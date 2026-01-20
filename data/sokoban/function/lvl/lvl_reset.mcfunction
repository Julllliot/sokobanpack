# ## reset current level
#
# @context lvl_reset advancement

schedule function sokoban:lvl/lvl_adv_revoke 1s
function sokoban:lvl/lvl_reset_handling with storage sokoban:data dump.lvl
