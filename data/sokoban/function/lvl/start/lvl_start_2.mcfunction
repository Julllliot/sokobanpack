data modify storage sokoban:data dump.lvl.current set value 2
function sokoban:init

function sokoban:obj/movable_tinted_pot/set/set_mtpot_rnd_same_type {coords:"11,1,10, 11,1,11",qty:2}
function sokoban:obj/tinted_tile/set/set_tinted_tile {coords:"13,0,13, 12,0,12",qty:2}
function sokoban:player/set/set_player {coords:"10,1,9",type:0,rot:"south",rnd:true,player_moves:24}
