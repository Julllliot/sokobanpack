data modify storage sokoban:data dump.lvl.current set value 3
function sokoban:init

function sokoban:obj/movable_tinted_pot/set/set_mtpot_rnd_same_type {coords:"13,1,37, 14,1,36, 15,1,37",qty:3}
function sokoban:obj/tinted_tile/set/set_tinted_tile {coords:"13,0,36, 14,0,37, 13,0,38",qty:3}
function sokoban:player/set/set_player {coords:"12,1,36",type:0,rot:"east",rnd:true,player_moves:20}
