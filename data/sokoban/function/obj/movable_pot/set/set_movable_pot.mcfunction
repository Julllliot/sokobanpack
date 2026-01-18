# ## sets a movable pot
#
# @context any
# @macros
#   coords: (string) 'x,y,z'
#   qty: (int) 1..4; quantity of objects

execute if entity @e[type=marker,tag=movable_pot,limit=1] run function sokoban:obj/movable_pot/init

$function julliapi:setobj/main {\
  xyz:[$(coords)],\
  markernbt:'{Tags:["movable_obj","movable_pot","without_id"]}',\
  block:'decorated_pot',\
  quantity:$(qty),\
  entity:'none',\
  entitynbt:'none',\
  temp:'mvbpot'\
}

$execute as @e[type=marker,tag=movable_pot,tag=without_id,limit=$(qty)] run scoreboard players set @s global.obj_id 0
