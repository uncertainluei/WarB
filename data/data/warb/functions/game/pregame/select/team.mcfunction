scoreboard players operation @s warb.selectTeam = tm warb.selectTeam
scoreboard players reset tm warb.selectTeam

execute at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.6
function warb:game/pregame/menu/teams
