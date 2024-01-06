gamemode adventure @s
tp @s @e[type=marker,tag=warb.spawnArea.available,limit=1,sort=random]

scoreboard players reset @s warb.selectTeam

scoreboard players reset @s warb.selectTime
scoreboard players reset @s warb.selectFrag
scoreboard players reset @s warb.selectStock

scoreboard players reset @s warb.selectSpeed
scoreboard players reset @s warb.selectJump

scoreboard players reset @s warb.pregameMenu
scoreboard players reset @s warb.pregameInfo

scoreboard players operation @s warb.teamCount = c warb.teamCount

tag @s add warb.inPregame

# Make sure previous votes allow joining players to get in
function warb:game/pregame/calculate_votes

clear @s
function warb:game/pregame/menu/main
