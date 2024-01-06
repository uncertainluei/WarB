scoreboard players reset @s warb.left

execute if entity @s[team=!warb.hub] if score c warb.level matches 0 run function warb:player/reset/hub
execute if score gs warb.level matches 0..2 run function warb:player/reset/ingame
