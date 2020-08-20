#function that emulates the "repair armor" spell
#To use this spell, right click in the direction of a player, or at your own feet, to repair your armor.
#author: Ryan Keller, Aug 2020

#increment the raycast
scoreboard players add @s raycast 1

#check for desired entity
execute if entity @p[gamemode=adventure,distance=..1,tag=!Caster] run scoreboard players set @s raycast 999999

#spell effects
execute as @s[scores={raycast=1000..}] positioned ^ ^ ^ run tag @p[gamemode=adventure] add repair
execute as @s[scores={raycast=1000..}] positioned ^ ^ ^ run particle crit ~ ~1 ~ 0.1 0.1 0.1 0.1 20 force

execute if entity @p[tag=repair] run execute as @a[tag=repair] run function spells:func/repair_armor
execute if entity @p[tag=repair] run scoreboard players set @s cooldownRA 900
execute if entity @p[tag=repair] run function spells:cooldown/repair_armor
execute if entity @p[tag=repair] run scoreboard players set @s click 0

#if no entity found, move the ray forward and try again (until reaching a range limit)
execute if block ~ ~ ~ #spells:spell_permeable as @s[scores={raycast=..20}] positioned ^ ^ ^0.1 run function spells:spell/repair_armor
