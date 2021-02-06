#function that emulates the "light" spell
#To use this spell, hold it in your hand or off hand, and a torch will follow you around
#author: Ryan Keller, Aug 2020

#remove old torches
fill ~-2 ~0 ~-2 ~2 ~6 ~2 air replace soul_torch

#set the torch for light
fill ~ ~2 ~ ~ ~2 ~ soul_torch replace air

#set a timer for removing torches after the spell is no longer active (1 sec)
scoreboard players set @s cooldownLight 21
