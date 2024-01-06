function warb:game/level/set_border/reset

gamerule fallDamage false
gamerule fireDamage false
gamerule drowningDamage false

scoreboard players set c warb.level 0
scoreboard players set c warb.gameMode 0
scoreboard players reset gs warb.level

bossbar set warb:game_timer visible false
execute as @a run function warb:player/sync

tag @e[tag=warb.entity.active] remove warb.entity.active
kill @e[type=!player,tag=warb.entity.instance]

tag @e[tag=warb.level.current] remove warb.level.current
tag @e[tag=warb.spawnArea.available] remove warb.spawnArea.available
