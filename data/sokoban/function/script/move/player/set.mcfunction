# ## move player
#
# @context as @e[type=marker,tag=player,limit=1] positioned as @s
# @within sokoban:script/move/player/move_player
# @using storage sokoban:temp temp.move
# @macros
#   dir: (string) '~x,~,~z'
#   w, x, y, z: (float) rotation components
#   head: (string); player/skull type
#   rot: (int) 0..14
#   nbt: (string)

$clone ~ ~ ~ ~ ~ ~ $(dir)
setblock ~ ~ ~ air
$data merge entity @n[type=item_display,tag=player,distance=..1.5] {transformation:{left_rotation:[$(w),$(x),$(y),$(z)]}}
$execute positioned ~ ~1.5 ~ as @n[type=item_display,tag=player,distance=..1] positioned as @s run tp @s $(dir)
$execute as @n[type=interaction,tag=player,dx=0] positioned as @s run tp @s $(dir)
$execute positioned $(dir) run tp @n[type=text_display,tag=player,distance=..2] ~ ~1.65 ~
schedule clear sokoban:util/hide_player_text_display
$tp @s $(dir)
scoreboard players add $total_moves n 1
