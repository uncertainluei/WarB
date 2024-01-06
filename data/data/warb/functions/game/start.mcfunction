gamerule fallDamage true
gamerule fireDamage true
gamerule drowningDamage true

scoreboard players set gs warb.level 2

execute if score fl warb:level matches 1.. run function warb:game/timer/initiate_frag_count
execute if score ta warb:level matches 1.. run function warb:game/timer/initiate

execute as @a at @s run function warb:game/player/reset
