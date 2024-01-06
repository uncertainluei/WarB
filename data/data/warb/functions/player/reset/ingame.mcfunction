execute if entity @s[team=warb.hub] run function warb:player/reset/save_hub_info

gamemode adventure @s

execute if score gs warb.level matches 0..1 run function warb:game/pregame/setup
execute if score gs warb.level matches 2.. run function warb:game/player/join_as_spectator
