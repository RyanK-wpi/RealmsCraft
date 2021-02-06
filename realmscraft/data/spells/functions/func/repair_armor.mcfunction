#support function for casting "repair armor"
#Author: Ryan Keller, Aug 2020

#remove previous hearts
effect clear @s minecraft:absorption

#apply 12 (6 hearts) health
effect give @s minecraft:absorption 999999 2 true

#if Skirmisher, remove 6 (3 hearts) health
effect give @s[tag=Skirmisher] minecraft:instant_damage 1 0 true

tag @s remove repair
