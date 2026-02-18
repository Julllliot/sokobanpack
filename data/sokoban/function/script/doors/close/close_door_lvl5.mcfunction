# @context any
# @within sokoban:lvl/set/lvl_set_5

execute as @a[limit=1,tag=!ignore,x=37,y=1,z=26,dy=2,dz=2] run return run fill 36 1 28 36 4 26 iron_bars[north=true,south=true]
schedule function sokoban:script/doors/close/close_door_lvl5 1t

