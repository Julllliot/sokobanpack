# ## sets movable tinted pots with random set color
#
# @context any
# @macros
#   coords: (string) 'x,y,z'
#   qty: (int) 1..4; quantity of objects

execute if entity @e[type=marker,tag=movable_tinted_pot,limit=1] run function sokoban:obj/movable_tinted_pot/init

# exception handling
$scoreboard players set #qty n $(qty)
$execute if score #qty n matches 5.. run return run tellraw @a[tag=debug] {"text":"[sokoban:movable_tinted_pot] FAIL: it only can exist 4 max movable_tinted_obj. Has $(qty).","color":"red"}
scoreboard players reset #qty

$function julliapi:setobj/main {\
  xyz:[$(coords)],\
  markernbt:'{Tags:["movable_obj","movable_tinted_obj","movable_tinted_pot","without_id"]}',\
  block:'decorated_pot',\
  quantity:$(qty),\
  entity:'none',\
  entitynbt:'none',\
  temp:'mvbtintpot'\
}

execute as @e[type=marker,tag=movable_tinted_pot] run scoreboard players set @s global.obj_id 0
$execute as @e[type=marker,tag=movable_tinted_pot,limit=$(qty),tag=without_id] at @s run summon interaction ~ ~ ~ {width:1.01,height:1.1,Tags:["sokoban.entity","movable_tinted_pot","movable_obj"]}
execute store result score #temp id run random value 0..3
$scoreboard players operation @e[type=marker,tag=movable_tinted_pot,limit=$(qty),tag=without_id] id = #temp id
$function sokoban:obj/movable_tinted_pot/set/flower {qty:$(qty)}

data remove storage sokoban:temp temp
