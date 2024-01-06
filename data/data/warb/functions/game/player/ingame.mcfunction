spawnpoint @s

execute if entity @s[gamemode=adventure,y=-128,dy=63] run function warb:game/player/void_death

execute if entity @s[tag=warb.respawning] run function warb:game/player/respawn_timer/loop

execute if entity @s[scores={warb.check.isDead=1..}] run function warb:game/player/death
execute if entity @s[scores={warb.check.hasFragged=1..}] run function warb:game/player/frag

execute if entity @s[scores={warb.check.spectate=1..}] run function warb:game/player/spectator/spectate
