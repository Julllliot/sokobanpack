# ## spawn the player
#
# @context any
# @macros
#   coords: (string) 'x,y,z'
#   type: (string) 'rnd' || (int) 0..3; player character id
#   rnd: (bool) choose random character
#   rot: (int) 0..14; player rotation (0=north,2=northeast,4=east,etc)

execute if entity @e[type=marker,tag=player,limit=1] run function sokoban:player/init

$function julliot:setobj/main {\
  xyz:[$(coords)],\
  quantity:1,\
  markernbt:'{Tags:["player"]}',\
  block:0,\
  entity:0,\
  entitynbt:'{}',\
  temp:'player',\
}

$function sokoban:player/set/id {type:'$(type)',rnd:$(rnd)}
$data modify storage sokoban:temp temp.player_rot set value $(rot)
execute as @e[type=marker,tag=player,limit=1] run function sokoban:player/character/set with storage sokoban:temp temp

data remove storage sokoban:temp temp
