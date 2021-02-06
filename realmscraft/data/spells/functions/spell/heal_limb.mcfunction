#function that emulates the "heal limb" spell
#To use this spell, right click in the direction of a player, or at your own feet, to regain two hearts.
#author: Ryan Keller, Aug 2020

#increment the raycast
scoreboard players add @s raycast 1
#set a particle to view the raycast in game (for debugging purposes)
#particle barrier ~ ~ ~ 0 0 0 0.1 1

#check for desired entity
execute if entity @p[gamemode=adventure,distance=..1] run scoreboard players set @s raycast 999999
#execute if entity @p[gamemode=adventure,distance=..1,scores={health=..19}] run scoreboard players set @s raycast 999999

#spell effects
execute as @s[scores={raycast=1000..}] positioned ^ ^ ^ run tag @p[gamemode=adventure] add heal
execute as @s[scores={raycast=1000..}] positioned ^ ^ ^ run particle happy_villager ~ ~1 ~ 0.25 0.25 0.25 1 20

execute if entity @p[tag=heal] run effect give @p minecraft:instant_health 1 0 true
execute if entity @p[tag=heal] run scoreboard players set @s cooldownHeal 200
execute if entity @p[tag=heal] run function spells:cooldown/heal_limb
execute if entity @p[tag=heal] run scoreboard players set @s click 0

#if no entity found, move the ray forward and try again (until reaching a range limit)
execute if block ~ ~ ~ #spells:spell_permeable as @s[scores={raycast=..20}] positioned ^ ^ ^0.1 run function spells:spell/heal_limb
