worldborder center ~ ~
worldborder set 64
scoreboard players remove c warb.borderSize 64

execute if score c warb.borderSize matches 1.. run function warb:game/level/set_border/iterate
