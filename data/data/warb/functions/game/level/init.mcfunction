scoreboard players operation @s warb.level = t warb.level
scoreboard players add t warb.level 1

tellraw @p [{"text":"Level object ","color":"gray"},{"selector":"@s","color":"red","underlined":true},{"text":" with ID ","color":"gray"},{"score":{"name":"@s","objective":"warb.level"},"color":"red"},{"text":" was created.","color":"gray"}]
