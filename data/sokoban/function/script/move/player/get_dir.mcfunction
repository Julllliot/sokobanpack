# ## get direction of movement based on player's yaw rotation
#
# @context as @a[limit=1]
# @within sokoban:script/move/player/main

execute store result score #player_yaw n run data get entity @s Rotation[0]

# north
execute if score #player_yaw n matches 135..180 run data merge storage sokoban:temp {temp:{move:{w:0f,x:0f,y:0f,z:1f,dir:"~ ~ ~-1"}}}
execute if score #player_yaw n matches -180..-135 run data merge storage sokoban:temp {temp:{move:{w:0f,x:0f,y:0f,z:1,dir:"~ ~ ~-1"}}}
# east
execute if score #player_yaw n matches -134..-45 run data merge storage sokoban:temp {temp:{move:{w:0f,x:-0.70705336f,y:0f,z:0.7071602f,dir:"~1 ~ ~"}}}
# south
execute if score #player_yaw n matches -45..45 run data merge storage sokoban:temp {temp:{move:{w:0f,x:1,y:0f,z:0,dir:"~ ~ ~1"}}}
# west
execute if score #player_yaw n matches 45..134 run data merge storage sokoban:temp {temp:{move:{w:0f,x:0.70705336f,y:0f,z:0.7071602f,dir:"~-1 ~ ~"}}}
