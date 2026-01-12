# ## move player
#
# @context as @e[type=marker,tag=player,limit=1] positioned as @s
# @within sokoban:script/move/player/main
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
$execute as @n[type=item_display,tag=player,distance=..1.5] positioned as @s run tp @s $(dir)
$execute as @n[type=interaction,tag=player,dx=0] positioned as @s run tp @s $(dir)
$tp @s $(dir)
