playsound minecraft:ui.button.click player @s ~ ~ ~ 0.25 2
title @s actionbar [{"text":"☆ ","color":"dark_gray","bold":false},{"text":"Respawning in ","color":"gray"},{"score":{"name":"@s","objective":"respawnSeconds"},"color":"red","hoverEvent":{"action":"show_text","value":[{"text":"","bold":true}]}},{"text":"s ","color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"","bold":true}]}},{"text":"☆","color":"dark_gray","hoverEvent":{"action":"show_text","value":[{"text":"","bold":true}]}}]

scoreboard players remove @s respawnSeconds 1
scoreboard players set @s respawnTimer 20