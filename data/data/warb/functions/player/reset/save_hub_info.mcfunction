summon marker ~ ~ ~ {Tags:["warb.locationSaver","warb.locationSaver.spawn"]}
tp @e[type=marker,tag=warb.locationSaver.spawn,limit=1] @s
scoreboard players operation @e[type=marker,tag=warb.locationSaver.spawn,limit=1] warb.playerId = @s warb.playerId
tag @e[type=marker,tag=warb.locationSaver.spawn,limit=1] remove warb.locationSaver.spawn

scoreboard players set @s[gamemode=survival] warb.previousGameMode 0
scoreboard players set @s[gamemode=creative] warb.previousGameMode 1
scoreboard players set @s[gamemode=adventure] warb.previousGameMode 2
scoreboard players set @s[gamemode=spectator] warb.previousGameMode 3
