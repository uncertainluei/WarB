scoreboard players remove @s[tag=respawning] respawnTimer 1

execute at @s if entity @s[tag=!respawning] if entity @p[gamemode=adventure,distance=..1] run function warb:game/healing/collect
execute if entity @s[tag=respawning,scores={respawnTimer=..0}] at @s run function warb:game/healing/respawn