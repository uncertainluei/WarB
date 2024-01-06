scoreboard players set gs warb.level 0
bossbar set warb:game_timer value 0
bossbar set warb:game_timer color white

execute as @e[type=marker,tag=warb.level.current,limit=1] run function warb:game/timer/update_text
