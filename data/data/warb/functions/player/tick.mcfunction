execute unless score @s warb.playerId matches 0.. run function warb:player/set_id
execute if entity @s[scores={warb.left=1..}] run function warb:player/sync

execute if score gs warb.level matches 0..1 run function warb:game/pregame/tick
execute if score gs warb.level matches 2.. run function warb:game/player/tick
