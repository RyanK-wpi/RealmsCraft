#support function for clearing a player class
#Author: Ryan Keller, Feb 2021

#remove spells
function rcq:clear_spells

#remove items
clear @s #spells:undroppable

#remove hearts
effect clear @s minecraft:absorption

#remove tags
tag @s remove Fighter
tag @s remove Skirmisher
tag @s remove Caster

tag @s remove Support
tag @s remove Support2
tag @s remove Mage
tag @s remove Mage2
tag @s remove Seer
tag @s remove Seer2
