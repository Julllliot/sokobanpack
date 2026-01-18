# ## displays the remaining moves of the player
#
# @context at @e[type=marker,tag=player,limit=1] positioned ~ ~1.65 ~
# @within
#   sokoban:player/set/set_player
#   sokoban:script/move/player/move_player
# @using storage sokoban:temp temp

execute unless function sokoban:lvl/win/condition run schedule function sokoban:util/hide_player_text_display 1s

$execute unless entity @e[type=text_display,limit=1,distance=..2] run return run summon minecraft:text_display ~ ~1.65 ~ {billboard: "center", alignment: "center", background: 1073741824, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text: "$(current_player_moves)", text_opacity: 255, Tags:["sokoban.entity","player"]}
$execute unless score $player_moves n matches 1 run return run data modify entity @n[type=text_display,distance=..2] text set value '$(current_player_moves)'
# red text
$data modify entity @n[type=text_display,distance=..2] text set value '§c$(current_player_moves)'

