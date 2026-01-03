#
# ## summon 4 temporary markers for sorting a 4 chars array
#
# @context any

tag @a[limit=1] add this

execute positioned as @a[limit=1,tag=this] run summon marker ~ ~ ~ {Tags:["id_sorter","id0","sokoban.entity","tmp"]}
execute positioned as @a[limit=1,tag=this] run summon marker ~ ~ ~ {Tags:["id_sorter","id1","sokoban.entity","tmp"]}
execute positioned as @a[limit=1,tag=this] run summon marker ~ ~ ~ {Tags:["id_sorter","id2","sokoban.entity","tmp"]}
execute positioned as @a[limit=1,tag=this] run summon marker ~ ~ ~ {Tags:["id_sorter","id3","sokoban.entity","tmp"]}
execute positioned as @a[limit=1,tag=this] as @n[type=marker,tag=id0,distance=..1] run scoreboard players set @s id 0
execute positioned as @a[limit=1,tag=this] as @n[type=marker,tag=id1,distance=..1] run scoreboard players set @s id 1
execute positioned as @a[limit=1,tag=this] as @n[type=marker,tag=id2,distance=..1] run scoreboard players set @s id 2
execute positioned as @a[limit=1,tag=this] as @n[type=marker,tag=id3,distance=..1] run scoreboard players set @s id 3

tag @a[limit=1,tag=this] remove this

schedule function sokoban:util/killall_tmp 1t
