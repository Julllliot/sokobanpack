# @context any
# @within sokoban:lvl/set/lvl_set_2

execute as @a[limit=1,tag=!ignore,x=4,y=1,z=9,dy=2,dz=2] run return run fill 2 1 9 2 5 11 polished_tuff
schedule function sokoban:script/doors/close/close_door_lvl2 1t

