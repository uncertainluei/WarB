scoreboard players reset @s hasFragged

playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.25 1

execute if score c warb.gameMode matches 3 give @s arrow
execute if score c warb.gameMode matches 1..3 xp add @s 1 levels