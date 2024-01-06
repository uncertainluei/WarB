scoreboard players operation c warb.gameMode = @s warb.gameMode
execute if score c warb.gameMode matches ..0 run scoreboard players set c warb.gameMode 1

scoreboard players reset rs warb.gameMode 
execute if score c warb.gameMode matches 4.. run scoreboard players set rs warb.gameMode 1

scoreboard players operation c warb.teamCount = @s warb.teamCount
execute if score c warb.teamCount matches ..0 if score c warb.gameMode matches 4.. run scoreboard players set c warb.teamCount 2

scoreboard players operation c warb.borderSize = @s warb.borderSize 
execute if score c warb.borderSize matches 64.. run function warb:game/level/set_border/init

