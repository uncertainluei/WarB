bossbar set warb:game_timer color red
bossbar set warb:game_timer visible true
scoreboard players operation tt warb.level = ta warb.level
execute store result bossbar warb:game_timer max run scoreboard players get ta warb.level
function warb:game/timer/update
