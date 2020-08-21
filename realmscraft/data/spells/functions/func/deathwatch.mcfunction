#support function for deathwatch
#Author: Ryan Keller, Aug 2020

#move the player, and only that player, 1 block above their corpse
execute as @s run tag @s add dw_move
execute as @e[tag=corpse,scores={deathLine=0},sort=nearest,limit=1] at @s run tp @p[gamemode=spectator,tag=deathwatch,tag=dw_move] ~ ~1 ~
execute as @s run tag @s remove dw_move
