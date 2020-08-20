#support function for clearing a players spells
#Author: Ryan Keller, Aug 2020

clear @s #spells:spellitems
clear @s minecraft:snowball{display:{Name:"\"Magic Missile\""}}

tag @s remove light
tag @s remove magic_missile
tag @s remove lightning_bolt
tag @s remove deathwatch
tag @s remove regeneration

scoreboard players set @s cooldownHeal 0
scoreboard players set @s cooldownRA 0
scoreboard players set @s cooldownRD 0
scoreboard players set @s raisedeadcount 0
scoreboard players set @s cooldownSoL 0
scoreboard players set @s MMCount 0
scoreboard players set @s cooldownMM 0
scoreboard players set @s cooldownEnfeeble 0
scoreboard players set @s cooldownLB 0
scoreboard players set @s cooldownGuidance 0
scoreboard players set @s cooldownRegen 0
