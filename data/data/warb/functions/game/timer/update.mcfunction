scoreboard players operation tl warb.level = tt warb.level

scoreboard players operation ts warb.level = tt warb.level
scoreboard players operation ts warb.level /= s warb.timeConv

scoreboard players operation tl warb.level %= s warb.timeConv
execute if score ts warb.level matches 0..60 if score tl warb.level matches 0 as @a at @s run playsound minecraft:item.lodestone_compass.lock player @s ~ ~ ~ 0.25 1

scoreboard players operation tm warb.level = ts warb.level
scoreboard players operation tm warb.level /= m warb.timeConv

scoreboard players operation th warb.level = tm warb.level
scoreboard players operation th warb.level /= m warb.timeConv

scoreboard players operation ts warb.level %= m warb.timeConv
scoreboard players operation tm warb.level %= m warb.timeConv

execute store result bossbar warb:game_timer value run scoreboard players get tt warb.level
bossbar set warb:game_timer players @a
execute as @e[type=marker,tag=warb.level.current,limit=1] run function warb:game/timer/update_text