# ## sets automatically all tinted tiles, with the correct respective colors
#
# @context any
# @macros
#   coords: (string) 'x,y,z'
#   qty: (int) 1..; quantity of tiles

# exception handling
execute unless entity @e[type=marker,tag=movable_tinted_obj,limit=1] run return run tellraw @a[tag=debug] {"text":"[sokoban:tinted_tile] FAIL: movable_tinted_obj doesn't exist.","color":"red"}
$execute as @e[type=marker,tag=movable_tinted_obj,limit=$(qty)] unless entity @s[scores={id=0..3}] run return run tellraw @a[tag=debug] {"text":"[sokoban:tinted_tile] FAIL: movable_tinted_obj doesn't have an id score.","color":"red"}

execute if entity @e[type=marker,tag=tinted_tile] run function sokoban:obj/tinted_tile/init

$function julliapi:setobj/main {\
  xyz:[$(coords)],\
  markernbt:'{Tags:["tinted_tile"]}',\
  quantity:$(qty),\
  block:'none',\
  entity:'none',\
  entitynbt:'none',\
  temp:'tintedtile'\
}

$data merge storage sokoban:temp {temp:{qty:$(qty),id:0}}
scoreboard players set #for n 0
scoreboard players set #temp id 0
function sokoban:obj/tinted_tile/set/id with storage sokoban:temp temp
$execute as @e[type=marker,tag=tinted_tile,limit=$(qty)] at @s run function sokoban:obj/tinted_tile/set/color
data remove storage sokoban:temp temp
