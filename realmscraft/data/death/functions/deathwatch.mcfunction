#find the corpse at the same spot in the death line and tp the player to them
scoreboard players operation @e[type=zombie,tag=corpse] deathLine -= @s deathLine
tp @s @e[type=zombie,tag=corpse,scores={deathLine=0},limit=1]
scoreboard players operation @e[type=zombie,tag=corpse] deathLine += @s deathLine
