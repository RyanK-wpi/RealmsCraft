#cooldown function for "magic missile"
#Author: Ryan Keller, Aug 2020

#set cooldown for magic missle
execute as @s[tag=magic_missile,scores={cooldownMM=0,MMCount=..2}] run scoreboard players add @s cooldownMM 201

#return spell
execute as @s[tag=magic_missile,scores={cooldownMM=1,MMCount=..2}] run function spells:func/missile/give
