#function that emulates the "deathwatch" spell
#This spell takes effect automatically, and allows the player to remain at their corpse and look around.
#author: Ryan Keller, Aug 2020

#find the corpse at the same spot in the death line
scoreboard players operation @e[type=zombie,tag=corpse] deathLine -= @s deathLine

#if the player is not near their corpse, tp them to their corpse
execute as @s at @s positioned ~ ~-1 ~ unless entity @e[distance=..0.01,tag=corpse,scores={deathLine=0}] run execute at @e[tag=corpse,scores={deathLine=0}] run tp @s ~ ~1 ~

#Run modified "pickup corpse" once to reset visual glitch
#destroy the temp bed, standing the corpse up
execute at @e[tag=corpse,scores={deathLine=0},tag=!dw_drop] run setblock ~ 1 ~ air
execute at @s run tag @e[tag=corpse,scores={deathLine=0}] add dw_drop

#return the death line to original state
scoreboard players operation @e[type=zombie,tag=corpse] deathLine += @s deathLine
