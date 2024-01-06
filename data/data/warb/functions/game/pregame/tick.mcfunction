execute at @s as @e[type=item,sort=nearest,limit=1,distance=..2] if data entity @s Thrower run data merge entity @s {PickupDelay:0s}

execute unless predicate warb:pregame/select/empty run function warb:game/pregame/checks
