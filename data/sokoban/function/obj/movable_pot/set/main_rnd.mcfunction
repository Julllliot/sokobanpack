#
# ## sets a movable pot with random color
#
# @context any
# @macros
#   coords: (string) 'x,y,z'
#   qty: (int) 1..4; quantity of objects

execute if entity @e[type=marker,tag=movable_pot] run function sokoban:obj/movable_pot/init

$function julliot:setobj/main {\
  xyz:[$(coords)],\
  markernbt:'{Tags:["so.marker.block","movable_obj","movable_pot","without_id"]}',\
  block:'decorated_pot',\
  quantity:$(qty),\
  entity:0,\
  entitynbt:0,\
  temp:'mvbpot'\
}

$function sokoban:obj/movable_pot/set/id {qty:$(qty)}
function sokoban:obj/movable_pot/set/flower
data remove storage sokoban:temp temp
