# ## spawn the player
#
# @context any
# @macros
#   coords: (string) 'x,y,z'
#   type: (string) 'rnd' || (int) 0..3; player character id
#   rnd: (bool) choose random character
#   rot: (string) north || east || south || west

execute if entity @e[type=marker,tag=player,limit=1] run function sokoban:player/init
$scoreboard players set $player_moves n $(player_moves)

# exception handling
execute if score $player_moves n matches 0 run return run tellraw @a[tag=debug] {"text":"[sokoban:player/set/set_player] FAIL: $player_moves score must not be 0.","color":"red"}

$function julliapi:setobj/main {\
  xyz:[$(coords)],\
  quantity:1,\
  markernbt:'{Tags:["sokoban.entity","player","movable"]}',\
  block:'none',\
  entity:'none',\
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
$execute as @e[type=item_display,tag=player,limit=1] run function sokoban:player/character/rotation/$(rot)
function sokoban:player/set/interaction
$execute at @e[type=marker,tag=player,limit=1] run function sokoban:script/move/player/display_moves {current_player_moves:$(player_moves)}

data remove storage sokoban:temp temp
