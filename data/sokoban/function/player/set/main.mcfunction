# ## spawn the player
#
# @context any
# @macros
#   coords: (string) 'x,y,z'
#   type: (string) 'rnd' || (int) 0..3; player character id
#   rnd: (bool) choose random character
#   rot: (int) 0..14; player rotation (0=north,2=northeast,4=east,etc)

execute if entity @e[type=marker,tag=player,limit=1] run function sokoban:player/init

$function julliapi:setobj/main {\
  xyz:[$(coords)],\
  quantity:1,\
  markernbt:'{Tags:["sokoban.entity","player","movable"]}',\
  block:0,\
  entity:0,\
  entitynbt:'{}',\
  temp:'player',\
}

# secret characters
# if (type=="secret") then set secret
data modify storage sokoban:temp temp.secret_characters set value "secret"
$execute store success score #secret_characters n run data modify storage sokoban:temp temp.secret_characters set value "$(type)"
execute if score #secret_characters n matches 0 at @e[type=marker,tag=player,limit=1] run return run function sokoban:player/character/secret
# by chance (20%)
execute store result score #secret_characters n run random value 0..50
execute if score #secret_characters n matches 2 at @e[type=marker,tag=player,limit=1] run return run function sokoban:player/character/secret

$function sokoban:player/set/id {type:'$(type)',rnd:$(rnd)}
execute as @e[type=marker,tag=player,limit=1] run function sokoban:player/character/set with storage sokoban:temp temp
function sokoban:player/set/interaction

data remove storage sokoban:temp temp
