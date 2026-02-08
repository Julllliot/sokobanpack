## sets the respective flower to the movable tinted pot
#
# @context any
# @within 
#   sokoban:obj/movable_tinted_pot/set/set_rnd
#   sokoban:obj/movable_tinted_pot/set/set_same_type
# @macros
#   qty: (int)

$execute positioned as @e[type=marker,tag=movable_tinted_pot,scores={id=0},limit=$(qty)] run setblock ~ ~1 ~ potted_dandelion
$execute positioned as @e[type=marker,tag=movable_tinted_pot,scores={id=1},limit=$(qty)] run setblock ~ ~1 ~ potted_blue_orchid
$execute positioned as @e[type=marker,tag=movable_tinted_pot,scores={id=2},limit=$(qty)] run setblock ~ ~1 ~ potted_cherry_sapling
$execute positioned as @e[type=marker,tag=movable_tinted_pot,scores={id=3},limit=$(qty)] run setblock ~ ~1 ~ potted_azalea_bush

