scoreboard players set gs warb.level 1

bossbar set warb:game_timer color green

scoreboard players set tt warb.level 610
execute store result bossbar warb:game_timer max run scoreboard players get tt warb.level
function warb:game/timer/update
