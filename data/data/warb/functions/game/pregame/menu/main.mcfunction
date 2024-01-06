scoreboard players reset @s warb.pregameMenu

clear @s
execute if score c warb.gameMode matches 4..5 run loot give @s loot warb:pregame/menu/main/conquest_settings
execute if score c warb.gameMode matches 5 run loot give @s loot warb:pregame/menu/main/conquest_settings

loot replace entity @s container.6 loot warb:pregame/menu/main
