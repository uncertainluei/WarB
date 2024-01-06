execute if score th warb.level matches 1.. run function warb:game/timer/update_text/hour
execute unless score th warb.level matches 1.. if score tt warb.level matches 0.. run function warb:game/timer/update_text/minute

execute unless score tt warb.level matches 0.. run bossbar set warb:game_timer name [{"selector":"@s"},{"text":" - ","color":"gray","bold":true},{"text":"Time's up!","color":"red"}]
