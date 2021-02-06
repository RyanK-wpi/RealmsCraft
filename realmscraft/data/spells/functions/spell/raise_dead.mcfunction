#function that emulates the "Combat Raise Dead" spell
#To use this spell, right click in the direction of a corpse to instantly revive it.
#author: Ryan Keller, Aug 2020

#increment the raycast
scoreboard players add @s raycast 1
#set a particle to view the raycast in game (for debugging purposes)
#particle barrier ~ ~ ~ 0 0 0 0.1 1

#check for desired entity
execute if entity @e[distance=..1,type=zombie,scores={deathLine=1..}] run scoreboard players set @s raycast 999999

#spell effects
execute as @s[scores={raycast=1000..}] positioned ^ ^ ^ run tag @e[limit=1,sort=nearest,type=zombie,scores={deathLine=1..}] add revive

execute if entity @e[tag=revive] run scoreboard players set @s cooldownRD 60
execute if entity @e[tag=revive] run function spells:cooldown/raise_dead
execute if entity @e[tag=revive] run scoreboard players set @s click 0
execute if entity @e[tag=revive] as @s run scoreboard players add @s raisedeadcount 1
execute as @e[tag=revive] at @s run function spells:func/revive

#if no entity found, move the ray forward and try again (until reaching a range limit)
execute if block ~ ~ ~ #spells:spell_permeable as @s[scores={raycast=..20}] positioned ^ ^ ^0.1 run function spells:spell/raise_dead
