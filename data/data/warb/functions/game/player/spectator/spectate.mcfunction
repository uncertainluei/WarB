scoreboard players reset @s spectate
scoreboard players reset @s left

scoreboard players reset @s rejoin
scoreboard players enable @s rejoin

scoreboard players reset @s frags
scoreboard players reset @s hasFragged
scoreboard players reset @s isDead

xp set @s 0 levels

gamemode spectator @s
tag @s add spectating
tag @s remove respawning

tellraw @s [{"text":"☆ ","color":"dark_gray"},{"text":"You are now spectating.\n\nTo re-join the game, enter ","color":"gray"},{"text":"/trigger rejoin","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"Press to automatically enter command"}]},"clickEvent":{"action":"suggest_command","value":"/trigger rejoin"}},{"text":".","color":"gray"}]