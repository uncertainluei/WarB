tag @s remove respawning

gamemode adventure @s
tp @s @e[tag=warb.spawnArea.available,limit=1,sort=random]

clear @s
execute if score c warb.gameMode matches 1 run loot give @s loot warb:items/equipment/deathmatch
execute if score c warb.gameMode matches 2 run loot give @s loot warb:items/instagun
execute if score c warb.gameMode matches 3 run loot give @s loot warb:items/equipment/oitc

title @s actionbar ""

effect clear @s

effect give @s[tag=!edit] minecraft:saturation infinite 127 true
effect give @s[tag=!edit] minecraft:regeneration 3 127 true
effect give @s[tag=!edit] minecraft:resistance 3 255 true
effect give @s[tag=!edit] weakness 3 127 true
