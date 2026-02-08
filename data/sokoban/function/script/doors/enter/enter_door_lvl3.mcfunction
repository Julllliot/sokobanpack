# @context any
# @within sokoban:lvl/win/success
# @using storage sokoban:data dump.lvl
#14 1 22
execute as @a[limit=1,tag=!ignore,x=14,y=1,z=22,dy=2,dx=-1] run return run function sokoban:lvl/lvl_continue
execute if entity @e[limit=1,type=marker,tag=player] run schedule function sokoban:script/doors/enter/enter_door_lvl3 1t
