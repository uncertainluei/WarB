execute as @e[type=!player,tag=warb.entity.active] if score @s warb.level = c warb.level at @s run function #warb:game/entity/tick

function warb:game/timer/count_down
