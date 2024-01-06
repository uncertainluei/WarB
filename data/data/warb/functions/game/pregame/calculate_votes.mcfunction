scoreboard players reset c warb.playerId
execute at @a[gamemode=!spectator] run scoreboard players add c warb.playerId 1

scoreboard players set tm warb.playerId 2
scoreboard players operation hc warb.playerId = c warb.playerId
scoreboard players operation hc warb.playerId /= tm warb.playerId

scoreboard players reset t warb.selectReady
execute at @a[gamemode=!spectator,scores={warb.selectReady=1}] run scoreboard players add t warb.selectReady 1

execute if score t warb.selectReady >= hc warb.playerId if score gs warb.level matches 0 run function warb:game/pregame/timer/start
execute unless score t warb.selectReady >= hc warb.playerId if score gs warb.level matches 1 run function warb:game/pregame/timer/awaiting
