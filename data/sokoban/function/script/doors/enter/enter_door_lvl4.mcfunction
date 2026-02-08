# @context any
# @within sokoban:lvl/win/success
# @using storage sokoban:data dump.lvl

execute as @a[limit=1,tag=!ignore,x=24,y=1,z=-8,dy=2,dz=2] run return run function sokoban:lvl/lvl_continue
execute if entity @e[limit=1,type=marker,tag=player] run schedule function sokoban:script/doors/enter/enter_door_lvl4 1t
