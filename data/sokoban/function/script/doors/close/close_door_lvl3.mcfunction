# @context any
# @within sokoban:lvl/set/lvl_set_3

execute as @a[limit=1,tag=!ignore,x=14,y=1,z=28,dy=2,dx=-1] run return run fill 14 1 27 13 4 27 iron_bars[east=true,west=true]
schedule function sokoban:script/doors/close/close_door_lvl3 1t

