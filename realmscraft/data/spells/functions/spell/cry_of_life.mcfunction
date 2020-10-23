#function that emulates the "Cry of Life" spell
#To use this spell, right click, all corpses within ~60ft will be revived.
#author: Ryan Keller, Aug 2020

#revive corpses within 60 feet (approx 18.3m)
execute at @s run tag @e[distance=..18.3,type=zombie,scores={deathLine=1..}] add revive
execute as @e[tag=revive] run function death:revive

#remove cry of life after use
clear @s carrot_on_a_stick{display:{Name:"\"Cry of Life\"",Lore:["\"Spell Focus\""]}}
give @s minecraft:barrier{CustomModelData:1,display:{Name:"\"All Cries of Life used\"",Lore:["\"Spell Focus\""]}} 1
scoreboard players set @s click 0
