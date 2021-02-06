#function that emulates the "Guidance" spell
#To use this spell, right click, and a message will appear.
#author: Ryan Keller, Aug 2020

#decalare a usage of Guidance and who used it
tellraw @a[team=marshals] [{"color":"red","selector":"@s"},{"text":" has used Guidance","color":"red"}]

#give a cooldown
scoreboard players set @s cooldownGuidance 3600
execute as @s run function spells:cooldown/guidance
scoreboard players set @s click 0
