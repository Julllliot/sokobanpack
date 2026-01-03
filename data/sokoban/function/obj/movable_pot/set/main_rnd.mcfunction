#
# ## sets a movable pot with random color
#
# @context any
# @macros
#   coords: objects coords array
#   qty: quantity of objects (range=1..4)

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

#execute store result storage sokoban:obj movable_pot.rnd_seed[0] int 1 run random value 0..3
#$data merge storage sokoban:tmp {qty:$(qty),id:0}
#scoreboard players set #for n 0
$function sokoban:obj/movable_pot/set/id {qty:$(qty)}
function sokoban:obj/movable_pot/set/flower
