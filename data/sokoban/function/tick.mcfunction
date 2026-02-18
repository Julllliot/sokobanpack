# ## Main loop for checking states

execute as @a[limit=1,scores={unstuck=1..}] run function sokoban:script/trigger/trigger_unstuck
