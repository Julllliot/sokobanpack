# @within sokoban:player/character/set

setblock ~ ~ ~ slime_block
# slime head
summon item_display ~ ~1.49 ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjhkOWMwMjM3MzZjYmJjOTc5MTY0YWU4MjAxYmI0OTFhOTE0NmUyNzkxYTBmMTRiZDZmNGJjMjc2YmY4NGM3OSJ9fX0="}]}}},Tags:["sokoban.entity","player"]}
