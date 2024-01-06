gamerule fallDamage false
gamerule fireDamage false
gamerule drowningDamage false

bossbar set warb:game_timer visible true
function warb:game/pregame/timer/awaiting

# Reset all available spawn spots
tag @e[tag=warb.spawnArea.available] remove warb.spawnArea.available
execute as @e[type=marker,tag=warb.spawnArea] if score @s warb.level = c warb.level run tag @s add warb.spawnArea.available

# Get current level entity
tag @e[tag=warb.level.current] remove warb.level.current
execute as @e[type=marker,tag=warb.level] if score @s warb.level = c warb.level run tag @s add warb.level.current
execute as @e[type=marker,tag=warb.level.current,limit=1] at @s run function warb:game/level/get_properties

# Call all reset functions on game components
tag @e[tag=warb.entity.active] remove warb.entity.active
execute as @e[type=marker,tag=warb.entity] if score @s warb.level = c warb.level at @s run function warb:game/entity/reset

scoreboard players reset on warb.level
scoreboard players operation tt warb.level = ta warb.level
execute store result bossbar warb:game_timer max run scoreboard players get ta warb.level
function warb:game/timer/update

scoreboard players set gs warb.level 0
execute as @a at @s run function warb:player/sync
