# ## set respective tile's color
#
# @within sokoban:obj/tinted_tile/set/main

execute if entity @s[scores={id=0}] run setblock ~ ~ ~ yellow_glazed_terracotta
execute if entity @s[scores={id=1}] run setblock ~ ~ ~ light_blue_glazed_terracotta
execute if entity @s[scores={id=2}] run setblock ~ ~ ~ pink_glazed_terracotta
execute if entity @s[scores={id=3}] run setblock ~ ~ ~ green_glazed_terracotta

