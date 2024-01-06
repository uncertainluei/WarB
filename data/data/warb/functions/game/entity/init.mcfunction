tag @s remove warb.entity.init
execute if entity @s[tag=warb.level] run function warb:game/level/init
execute if entity @s[tag=!warb.level] run scoreboard players operation @s warb.level = @e[tag=warb.level,limit=1,sort=nearest] warb.level
