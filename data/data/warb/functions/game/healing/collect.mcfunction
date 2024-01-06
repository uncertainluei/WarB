effect give @p minecraft:instant_health 1 1 true
playsound minecraft:item.honey_bottle.drink player @p ~ ~ ~ 0.8 1.2

tp @s ~ ~1024 ~

tag @s add respawning
scoreboard players set @s respawnTimer 600
