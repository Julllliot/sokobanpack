# ## used for hiding the player's text_display entity temporarily
#
# @context any

execute at @e[type=marker,tag=player,limit=1] run tp @n[type=text_display,tag=player,limit=1,distance=..1.65] ~ ~-1 ~
