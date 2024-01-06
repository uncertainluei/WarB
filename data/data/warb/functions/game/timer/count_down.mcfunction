scoreboard players remove tt warb.level 1

execute if score gs warb.level matches 1..3 run function warb:game/timer/update
execute if score tt warb.level matches 0.. run function warb/game/timer/end
