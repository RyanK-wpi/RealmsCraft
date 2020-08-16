#function that emulates the "Seed of Life" spell
#To use this spell, right click in the direction of a corpse, and a two minute regeneration will begin.
#author: Ryan Keller, Aug 2020

#increment the raycast
scoreboard players add @s raycast 1

#check for desired entity
execute if entity @e[distance=..1,type=zombie,tag=corpse,scores={regenerateTime=0}] run scoreboard players set @s raycast 999999

#spell effects
execute as @s[scores={raycast=1000..}] positioned ^ ^ ^ run tag @e[limit=1,sort=nearest,type=zombie,tag=corpse] add regen

execute if entity @e[tag=regen] run scoreboard players set @s cooldownSoL 2400
execute if entity @e[tag=regen] run function spells:cooldown/seed_of_life
execute if entity @e[tag=regen] run scoreboard players set @s click 0
execute as @e[tag=regen] run scoreboard players set @s regenerateTime 2400
execute as @e[tag=regen] run tag @s add regenerate
execute as @e[tag=regen] run tag @s remove regen

#if no entity found, move the ray forward and try again (until reaching a range limit)
execute if block ~ ~ ~ #spells:spell_permeable as @s[scores={raycast=..20}] positioned ^ ^ ^0.1 run function spells:spell/seed_of_life
