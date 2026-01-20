data modify storage sokoban:data dump.lvl.current set value 1
function sokoban:init

function sokoban:obj/movable_tinted_pot/set/set_mtpot_rnd_same_type {coords:"11,1,-10, 11,1,-8",qty:2}
function sokoban:obj/tinted_tile/set/set_tinted_tile {coords:"12,0,-10, 14,0,-9",qty:2}
function sokoban:player/set/set_player {coords:"10,1,-10",type:0,rot:"east",rnd:true,player_moves:32}
