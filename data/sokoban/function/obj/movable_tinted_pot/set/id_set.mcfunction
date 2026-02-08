# ## to set a specific id to a set movable tinted pot
#
# @context @e[type=marker,tag=movable_tinted_pot,tag=without_id,limit=$(qty)]
# @macros
#   id: (int)

$scoreboard players set @s id $(id)
tag @s remove without_id
