scoreboard players add gs warb.level 1

execute if score gs warb.level matches 2 run function warb:game/start
execute if score gs warb.level matches 3 run function warb:game/end
