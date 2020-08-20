#support function for giving "magic missile"
#Author: Ryan Keller, Aug 2020

#give the player a magic missile
scoreboard players add @s MMCount 1
clear @s minecraft:barrier{display:{Name:"\"Magic Missile on Cooldown\""}}
give @s minecraft:snowball{CustomModelData:1,display:{Name:"\"Magic Missile\"",Lore:["\"Spell Attack\""]}}
