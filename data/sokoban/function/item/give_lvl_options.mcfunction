# ## gives player utility items to levels
#
# @context any
# @within sokoban:lvl/start/lvl_start_*

give @a[gamemode=!spectator,tag=!ignore,nbt=!{Inventory:[{id:"minecraft:lodestone"}]}] lodestone[consumable={consume_seconds:2147483647,animation:"none"},item_name="Reset level"] 1
give @a[gamemode=!spectator,tag=!ignore,nbt=!{Inventory:[{id:"minecraft:recovery_compass"}]},tag=finished_game] recovery_compass[consumable={consume_seconds:2147483647,animation:"none"},item_name="Return to Warp Room"] 1
give @a[gamemode=!spectator,tag=!ignore,nbt=!{Inventory:[{id:"minecraft:filled_map"}]},tag=finished_game] filled_map[consumable={consume_seconds:2147483647,animation:"none"},item_name="Select level"] 1
