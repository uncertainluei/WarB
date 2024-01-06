worldborder add 1
scoreboard players remove c warb.borderSize 1
execute if score c warb.borderSize matches 1.. run function warb:game/level/set_border/iterate
