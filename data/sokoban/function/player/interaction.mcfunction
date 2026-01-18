# ## to interact with player obj
#
# @context any
# @within sokoban:player/set/set_player

execute positioned as @a if entity @n[type=interaction,tag=player,distance=..20] run schedule function sokoban:player/interaction 1t

execute positioned as @a as @n[type=interaction,tag=player,distance=..8] on attacker run function sokoban:script/move/player/move_player
