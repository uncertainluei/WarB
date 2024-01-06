# Set gamerules (so it's drag-n-drop on every deathmatch/pvp/whatever map)
gamerule disableRaids true
gamerule commandBlockOutput false
gamerule announceAdvancements false
gamerule doDaylightCycle false
gamerule doInsomnia false
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule naturalRegeneration false
gamerule doWeatherCycle false
gamerule doTraderSpawning false
gamerule doPatrolSpawning false
gamerule doMobSpawning false


## SCOREBOARD OBJECTIVES

scoreboard objectives add warb.playerId dummy
# t = Total IDs, c = Total Online (exp. spectators), hc = Half Online (exp. spectators)

scoreboard objectives add warb.gameMode dummy
# 0 - Hub, 1 - Deathmath, 2 - Instagib, 3 - OiTC (frags add ammo), 4 - Conquest, 5 - CtF (maybe)
# c = Current, rs = Allow re-joins from spectating
# Set to hub by default
execute unless score c warb.gameMode matches 0.. run scoreboard players set c warb.gameMode 0

scoreboard objectives add warb.level dummy
# 0 - Hub, t = Total Maps (used in randomizer), c = Current
# gs = Game stage (empty is in-game, 0 = pre-game, 1 = ditto, but countdown is active, 2 = ingame)
# Set to hub by default, and no maps are available

execute unless score c warb.level matches 0.. run scoreboard players set c warb.level 0
execute unless score t warb.level matches 0.. run scoreboard players set t warb.level 0

scoreboard objectives add warb.timeConv dummy
scoreboard players set s warb.timeConv 20
scoreboard players set m warb.timeConv 60

# [entity] = executes functions if its map variable equals current

# tt = time (ticks), ts = time (seconds), tm = time (minutes), th = time (hours)
# tl = time since last second (ticks)
# ta = set time amount (ticks), 0 to disable

execute unless score ta warb.level matches 0.. run scoreboard players set ta warb.level 6000

scoreboard objectives add warb.teamCount dummy
# Determines the amount of teams for Conquest/CtF, c = current map
# (default 2)

scoreboard objectives add warb.teamScore dummy {"text":"Team Scores:","color":"red"}
# A = Team A, B = Team B
# In-game, A and B will appear with larger names (e.g. 'Team A' or 'Moon (B)')

scoreboard objectives add warb.borderSize dummy

scoreboard objectives add warb.frags playerKillCount {"text":"Frags","color":"red"}
scoreboard objectives setdisplay list warb.frags

scoreboard objectives add warb.health health {"text":"❤","color":"red"}
scoreboard objectives setdisplay below_name

scoreboard objectives add warb.check.hasFragged playerKillCount
scoreboard objectives add warb.check.isDead deathCount
scoreboard objectives add warb.check.usingRod minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard objectives add warb.respawnTimer dummy
scoreboard objectives add warb.respawnSeconds dummy

scoreboard objectives add warb.previousGameMode dummy

scoreboard objectives add warb.pregameInfo dummy
scoreboard objectives add warb.pregameMenu dummy

scoreboard objectives add warb.selectTeam dummy
scoreboard objectives add warb.selectClass dummy
scoreboard objectives add warb.selectReady dummy

scoreboard objectives add warb.selectTime dummy
scoreboard objectives add warb.selectFrag dummy
scoreboard objectives add warb.selectStock dummy

scoreboard objectives add warb.selectSpeed dummy
scoreboard objectives add warb.selectJump dummy

# Triggers
scoreboard objectives add warb.startGame.random trigger
scoreboard objectives add warb.startGame trigger

scoreboard objectives add warb.spectate trigger
scoreboard objectives add warb.rejoin trigger

scoreboard objectives add warb.left minecraft.custom:minecraft.leave_game

## TEAMS

# Hub team - cannot hurt others, can see all nametags, no collisions
team add warb.hub "Hub"
team modify warb.hub nametagVisibility always
team modify warb.hub collisionRule never
team modify warb.hub friendlyFire false

# Deathmatch/instagib/oitc team - cannot see nametags, no collisions
team add warb.ingame "In-game"
team modify warb.ingame nametagVisibility never
team modify warb.ingame collisionRule never
team modify warb.ingame friendlyFire true

# Team/CTF/Battlefront teams - can only see teammate nametags, can't hurt teammates
team add warb.ingame.teamRed "In-game (Team A)"
team modify warb.ingame.teamRed nametagVisibility hideForOtherTeams
team modify warb.ingame.teamRed collisionRule never
team modify warb.ingame.teamRed friendlyFire false

team add warb.ingame.teamBlue "In-game (Team B)"
team modify warb.ingame.teamBlue nametagVisibility hideForOtherTeams
team modify warb.ingame.teamBlue collisionRule never
team modify warb.ingame.teamBlue friendlyFire false

team add warb.ingame.teamGreen "In-game (Team C)"
team modify warb.ingame.teamGreen nametagVisibility hideForOtherTeams
team modify warb.ingame.teamGreen collisionRule never
team modify warb.ingame.teamGreen friendlyFire false

team add warb.ingame.teamYellow "In-game (Team D)"
team modify warb.ingame.teamYellow nametagVisibility hideForOtherTeams
team modify warb.ingame.teamYellow collisionRule never
team modify warb.ingame.teamYellow friendlyFire false

# Internal team names
team add warb.scoreboard.teamRed
team modify warb.scoreboard.teamRed color red
team modify warb.scoreboard.teamRed suffix {"text":"d","color":"red"}

team join warb.scoreboard.teamRed Re

team add warb.scoreboard.teamBlue
team modify warb.scoreboard.teamBlue color blue
team modify warb.scoreboard.teamBlue suffix {"text":"ue","color":"blue"}

team join warb.scoreboard.teamBlue Bl

team add warb.scoreboard.teamGreen
team modify warb.scoreboard.teamGreen color green
team modify warb.scoreboard.teamGreen suffix {"text":"een","color":"green"}

team join warb.scoreboard.teamGreen Gr

team add warb.scoreboard.teamYellow
team modify warb.scoreboard.teamYellow color yellow
team modify warb.scoreboard.teamYellow suffix {"text":"llow","color":"yellow"}

team join warb.scoreboard.teamYellow Ye

## TIMER BOSS BAR
bossbar add warb:game_timer ""
bossbar set warb:game_timer style notched_12
execute if score c warb.gameMode matches 0 run bossbar set warb:game_timer visible false

execute if score c warb.gameMode matches 0 run scoreboard objectives setdisplay sidebar
