execute unless score gs warb.level matches 1.. run bossbar set warb:game_timer name [{"selector":"@s"},{"text":" - ","color":"gray","bold":true},{"text":"Starting soon...","color":"red"}]

execute if score gs warb.level matches 1.. run bossbar set warb:game_timer name [{"selector":"@s"},{"text":" - ","color":"gray","bold":true},{"text": "Starting in ","color":"red"},{"score":{"name":"ts","objective":"warb.level"},"color":"gold"},{"text":"s","color":"red"}]
