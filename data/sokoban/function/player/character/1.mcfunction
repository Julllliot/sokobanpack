# @context as @e[type=marker,tag=player,limit=1] positioned as @s
# @within sokoban:player/character/set

setblock ~ ~ ~ polished_basalt
summon item_display ~ ~1.46 ~ {item: {count: 1, id: "minecraft:wither_skeleton_skull"}, transformation: {left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9200407f, 0.9200411f, 0.92004067f], translation: [0.0f, 0.0f, 0.0f]},Tags:["sokoban.entity","player"]}
