tp @s ^ ^ ^0.5

particle dragon_breath ~ ~ ~ 0 0 0 0 1 force

execute if entity @e[tag=warb.enemyPlayer,distance=..0.5] run tag @s add warb.instagun.hit.player
execute unless block ~ ~ ~ minecraft:air run tag @s add warb.instagun.hit.block

scoreboard players remove warb.raySteps 1

execute as @s[tag=!warb.instagun.hit.block,tag=!warb.instagun.hit.player,scores={warb.raySteps=1..}] at @s run function warb:game/item/instagun/move
