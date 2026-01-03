#
# ## sets automatically all tinted tiles, with the correct respective colors
#
# @context any
# @macros
#   coords: coords array
#   qty: quantity of tiles (range=1..4)

# exception handling
execute if entity @e[type=marker,tag=tinted_tile] run function sokoban:obj/tinted_tile/init
execute unless entity @e[type=marker,tag=movable_obj,limit=1] run return run tellraw @a[tag=debug] {"text":"FAIL: movable_obj doesn't exist.","color":"red"}
$execute as @e[type=marker,tag=movable_obj,sort=arbitrary,limit=$(qty)] unless entity @s[scores={id=0..3}] run return run tellraw @a[tag=debug] {"text":"FAIL: movable_obj doesn't have an id score.","color":"red"}

$function julliot:setobj/main {\
  xyz:[$(coords)],\
  markernbt:'{Tags:["tinted_tile","colorless"]}',\
  quantity:$(qty),\
  block:0,\
  entity:0,\
  entitynbt:0,\
  temp:'tintedtile'\
}

$data merge storage sokoban:tmp {tmp:{qty:$(qty),id:0}}
scoreboard players set #for n 0
scoreboard players set #tmp id 0
function sokoban:obj/tinted_tile/set/id with storage sokoban:tmp tmp
$execute as @e[type=marker,tag=tinted_tile,tag=colorless,limit=$(qty)] at @s run function sokoban:obj/tinted_tile/set/color
