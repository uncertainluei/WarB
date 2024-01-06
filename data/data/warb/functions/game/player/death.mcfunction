scoreboard players reset @s warb.check.isDead
tag @a remove warb.self
tag @s add warb.self
execute unless predicate warb:player/no_penalty_death run scoreboard players remove @s warb.frags 1
tag @a remove warb.self

spawnpoint @s
gamemode spectator @s
function warb:game/player/respawn_timer/begin
