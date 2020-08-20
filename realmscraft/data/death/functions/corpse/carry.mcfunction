#function for picking up corpses
#Author: Ryan Keller, Aug 2020

#give the carrier slowness
execute as @p[gamemode=adventure,scores={grab=1}] at @s if entity @e[distance=..2,scores={following=1}] unless entity @s[nbt={SelectedItem:{id:"minecraft:wither_skeleton_skull",tag:{display:{Name:"\"Zombie Walk\""}}}}] run effect give @s slowness 1 2 true

#carry the corpse
teleport @s ^ ^ ^0.3 facing entity @p[distance=1..2,gamemode=adventure,scores={grab=1}] feet
