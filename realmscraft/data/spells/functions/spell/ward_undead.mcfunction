#function that emulates the "Ward Undead" spell
#To use this spell, hold this item, and undead will be unable to approach within a certain threshold.
#author: Ryan Keller, Aug 2020

#create a particle effect to show that its working
execute as @s run particle nautilus ~ ~ ~ 1 1 1 0.1 1

#teleport undead away from the user, unless doing so puts them in a wall
execute as @e[type=#spells:undead] at @s if block ^ ^0 ^-1 air run teleport @s ^ ^0 ^-0.5 facing entity @p[distance=..2.8,nbt={SelectedItem:{id:"minecraft:wither_skeleton_skull",tag:{display:{Name:"\"Ward Undead\""}}}}] feet
