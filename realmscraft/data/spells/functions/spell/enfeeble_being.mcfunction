#function that emulates the "enfeeble being" spell
#To use this spell, right click in the direction of an enemy, and they will be weakened.
#author: Ryan Keller, Aug 2020

#increment the raycast
scoreboard players add @s raycast 1

#check for desired entity
execute if entity @e[distance=..1,type=!player,type=!villager,type=!item,type=!item_frame,tag=!enfeeble] run scoreboard players set @s raycast 999999
execute if entity @e[distance=..1,tag=boss] run scoreboard players set @s raycast 999999

#spell effects
execute as @s[scores={raycast=1000..}] positioned ^ ^ ^ run tag @e[limit=1,sort=nearest] add enfeeble
execute as @s[scores={raycast=1000..}] positioned ^ ^ ^ run particle smoke ~ ~1 ~ 0 0 0 0.1 20

execute if entity @e[tag=enfeeble] run execute as @e[tag=enfeeble] run function spells:func/enfeeble
execute if entity @e[tag=enfeeble] run scoreboard players set @s cooldownEnfeeble 600
execute if entity @e[tag=enfeeble] run function spells:cooldown/enfeeble_being
execute if entity @e[tag=enfeeble] run scoreboard players set @s click 0

#if no entity found, move the ray forward and try again (until reaching a range limit)
execute if block ~ ~ ~ #spells:spell_permeable as @s[scores={raycast=..120}] positioned ^ ^ ^0.1 run function spells:spell/enfeeble_being
