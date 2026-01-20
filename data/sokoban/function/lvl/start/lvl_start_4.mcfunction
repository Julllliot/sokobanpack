data modify storage sokoban:data dump.lvl.current set value 4
function sokoban:init

function sokoban:obj/movable_tinted_pot/set/set_mtpot_rnd {coords:"36,1,-7, 38,1,-6",qty:2}
function sokoban:obj/tinted_tile/set/set_tinted_tile {coords:"38,0,-4, 36,0,-9",qty:2}
function sokoban:player/set/set_player {coords:"35,1,-7",type:0,rot:"east",rnd:true,player_moves:41}
