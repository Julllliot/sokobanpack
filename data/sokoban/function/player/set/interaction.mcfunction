# ## to spawn the player's interaction entity
#
# context any
# @within sokoban:player/set/set_player
# @within sokoban:player/character/secret_characters

execute at @e[type=marker,tag=player,limit=1] run summon interaction ~ ~ ~ {height:1.5,width:1.01,Tags:["player","sokoban.entity"]}
function sokoban:player/interaction

