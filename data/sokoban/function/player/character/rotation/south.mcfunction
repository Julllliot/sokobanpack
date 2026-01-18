# ## sets player's rotation to north
#
# @context as @e[type=item_display,tag=player,limit=1]
# @using storage sokoban:temp temp

data modify entity @s transformation.left_rotation set value [0f,1f,0f,0f]
