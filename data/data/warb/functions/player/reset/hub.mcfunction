execute unless score @s warb.previousGameMode matches 0..3 run gamemode adventure @s

execute if score @s warb.previousGameMode matches 0 run gamemode survival @s
execute if score @s warb.previousGameMode matches 1 run gamemode creative @s
execute if score @s warb.previousGameMode matches 2 run gamemode adventure @s
execute if score @s warb.previousGameMode matches 3 run gamemode spectator @s

tp @s @e[type=marker,tag=warb.spawnArea,scores={warb.level=0},limit=1,sort=random]

tag @e remove warb.toTp
tag @s add warb.toTp
execute as @e[type=marker,tag=warb.locationSaver] if score @s warb.playerId = @p[tag=warb.toTp] warb.playerId run tag @s add warb.toTp

tag @s remove warb.toTp
tp @s @e[type=!player,tag=warb.toTp,limit=1]
kill @e[type=!player,tag=warb.toTp]

clear @s
team join warb.hub @s


