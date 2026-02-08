# @context any
# @within sokoban:lvl/set/lvl_set_1

execute as @a[limit=1,tag=!ignore,x=4,y=1,z=-11,dy=2,dz=4] run return run fill 2 1 -11 2 4 -7 polished_tuff
schedule function sokoban:script/doors/close/close_door_lvl1 1t

