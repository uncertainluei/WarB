tag @s add inGame
execute unless entity @s[scores={playerClass=0..5}] store result score @s playerClass run loot spawn ~ ~ ~ loot fruitfury:rng/player_class
function fruitfury:game/player/set