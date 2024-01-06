scoreboard players reset tm warb.selectTeam

execute if predicate warb:pregame/select/teams/red run scoreboard players set tm warb.selectTeam 1
execute if predicate warb:pregame/select/teams/blue run scoreboard players set tm warb.selectTeam 2
execute if predicate warb:pregame/select/teams/green run scoreboard players set tm warb.selectTeam 3
execute if predicate warb:pregame/select/teams/yellow run scoreboard players set tm warb.selectTeam 4
execute if predicate warb:pregame/select/teams/random run scoreboard players set tm warb.selectTeam 0

execute if score tm warb.selectTeam matches 0..6 run function warb:game/pregame/select/team
