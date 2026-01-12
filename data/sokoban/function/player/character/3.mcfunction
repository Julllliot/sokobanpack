# @context as @e[type=marker,tag=player,limit=1]
# @within sokoban:player/character/set

setblock ~ ~ ~ cyan_wool
summon item_display ~ ~1.49 ~ {item: {count: 1, id: "minecraft:player_head"}, transformation: {left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 0.99999994f, 0.9999999f], translation: [0.0f, 0.0f, 0.0f]},Tags:["sokoban.entity","player"]}
