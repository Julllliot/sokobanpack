# ## main data dump storage
#
# this data is persistent
# it saves mostly player progress,
# current level and unlocked levels, etc
#
# @within sokoban:start/new_game

data remove storage sokoban:data dump
data merge storage sokoban:data {\
  dump: {\
    lvl: {\
      current:0\
    },\
    player: {\
      trophy: {}\
    }\
  }\
}
