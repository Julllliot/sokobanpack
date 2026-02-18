# @context any
# @within sokoban:lvl/set/lvl_set_6

execute as @a[limit=1,tag=!ignore,x=28,y=1,z=-8,dy=2,dz=2] run fill 26 1 -6 26 4 -8 dark_prismarine
execute as @a[limit=1,tag=!ignore,x=28,y=1,z=-8,dy=2,dz=2] run return run fill 26 1 -7 26 4 -7 warped_stem
schedule function sokoban:script/doors/close/close_door_lvl4 1t

