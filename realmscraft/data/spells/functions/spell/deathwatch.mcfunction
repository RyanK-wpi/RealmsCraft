#function that emulates the "deathwatch" spell
#This spell takes effect automatically, and allows the player to remain at their corpse and look around.
#author: Ryan Keller, Aug 2020

#find the corpse at the same spot in the death line
scoreboard players operation @e[type=zombie,tag=corpse] deathLine -= @s deathLine

#if the player is not near their corpse, tp them to their corpse
execute as @s at @s positioned ~ ~-1 ~ unless entity @e[distance=..0.1,tag=corpse,scores={deathLine=0}] run teleport @s @e[tag=corpse,scores={deathLine=0},sort=nearest,limit=1]

#return the death line to original state
scoreboard players operation @e[type=zombie,tag=corpse] deathLine += @s deathLine
