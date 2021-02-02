#support function for creating a corpse
#Author: Ryan Keller, Aug 2020

#lay down corpse in master bed
data merge entity @s {SleepingX:1,SleepingY:1,SleepingZ:0}
execute as @e[type=minecraft:armor_stand,name="death location",limit=1] store result score @s deathpos.x run data get entity @s Pos[0]
execute as @e[type=minecraft:armor_stand,name="death location",limit=1] store result score @s deathpos.z run data get entity @s Pos[2]

#create temporary bed in render distance
execute as @e[type=minecraft:armor_stand,name="death location",limit=1] at @s run setblock ~ 0 ~ minecraft:red_bed[part=head]

#move corpse to temp bed
execute as @s store result entity @s SleepingX int 1 run scoreboard players get @e[type=minecraft:armor_stand,name="death location",limit=1] deathpos.x
data merge entity @s {SleepingY:0}
execute as @s store result entity @s SleepingZ int 1 run scoreboard players get @e[type=minecraft:armor_stand,name="death location",limit=1] deathpos.z

#return the finished corpse to the players death location, and clean up
tp @s @e[limit=1,type=armor_stand,name="death location"]
execute at @s run kill @e[type=armor_stand,name="death location",distance=..2]
