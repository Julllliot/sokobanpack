#
# ## sets a movable pot with random color
#
# @context any
# @macros
#   coords: (string) 'x,y,z'
#   qty: (int) 1..4; quantity of objects

execute if entity @e[type=marker,tag=movable_pot,limit=1] run function sokoban:obj/movable_pot/init

$function julliot:setobj/main {\
  xyz:[$(coords)],\
  markernbt:'{Tags:["so.marker.block","movable_obj","movable_pot","without_id"]}',\
  block:'decorated_pot',\
  quantity:$(qty),\
  entity:0,\
  entitynbt:0,\
  temp:'mvbpot'\
}

$execute as @e[type=marker,tag=movable_pot,tag=without_id,limit=$(qty)] run scoreboard players set @s global.obj_id 0
$function sokoban:obj/movable_pot/set/id {qty:$(qty)}
function sokoban:obj/movable_pot/set/flower

data remove storage sokoban:temp temp
