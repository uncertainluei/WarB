scoreboard players reset c warb.playerId
execute at @a[gamemode=!spectator] run scoreboard players add c warb.playerId 1

execute as @a at @s run function warb:player/tick

execute as @e[type=!player,tag=warb.entity.init] at @s run function #warb:game/entity/init
execute if score gs warb.level matches 1 run function warb:game/timer/count_down
execute if score gs warb.level matches 2 run function warb:game/tick
execute if score gs warb.level matches 3 run function warb:game/ending
