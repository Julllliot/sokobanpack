execute positioned as @e[type=marker,tag=movable_pot,scores={id=0},limit=1] run setblock ~ ~1 ~ potted_dandelion
execute positioned as @e[type=marker,tag=movable_pot,scores={id=1},limit=1] run setblock ~ ~1 ~ potted_blue_orchid
execute positioned as @e[type=marker,tag=movable_pot,scores={id=2},limit=1] run setblock ~ ~1 ~ potted_cherry_sapling
execute positioned as @e[type=marker,tag=movable_pot,scores={id=3},limit=1] run setblock ~ ~1 ~ potted_cactus

#scoreboard players add #for n 1
#$execute unless score #for n matches $(qty) run function sokoban:obj/movable_pot/set_color {qty:$(qty)}
