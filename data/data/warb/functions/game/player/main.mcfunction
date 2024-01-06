execute if entity @s[tag=!player] run function warb:game/player/hard_reset
execute if entity @s[scores={left=1..}] run function warb:player/resync

execute unless score @s warb.playerId matches 0.. run function warb:player/set_id

spawnpoint @s

execute if entity @s[gamemode=adventure,y=-128,dy=63] run function warb:game/player/void_death

execute if entity @s[tag=respawning] run function warb:game/player/respawn_timer/loop

execute if entity @s[scores={isDead=1..}] run function warb:game/player/death
execute if entity @s[scores={hasFragged=1..}] run function warb:game/player/frag

execute if entity @s[scores={spectate=1..}] run function warb:game/player/spectator/spectate