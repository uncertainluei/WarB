scoreboard players remove @s respawnTimer 1

execute if entity @s[scores={respawnTimer=..0,respawnSeconds=1..}] run function warb:game/player/respawn_timer/decrement
execute if entity @s[scores={respawnTimer=..0,respawnSeconds=..0}] at @s run function warb:game/player/reset