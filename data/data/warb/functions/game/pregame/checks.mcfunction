execute unless score @s warb.pregameMenu matches 0.. run function warb:game/pregame/checks/main
execute if score @s warb.pregameMenu matches 0 run function warb:game/pregame/checks/teams
execute if score @s warb.pregameMenu matches 2 run function warb:game/pregame/checks/modifiers

execute if score @s warb.pregameMenu matches 0..2 if predicate warb:pregame/select/back/main run function warb:game/pregame/menu/main
execute if score @s warb.pregameMenu matches 3.. if predicate warb:pregame/select/back/modifiers run function warb:game/pregame/menu/modifiers
