#function for dropping up corpses (returns corpse to a lying down position)
#Author: Ryan Keller, Aug 2020

#mark corpse location
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Silent:1b,CustomName:"\"dropped corpse\""}
scoreboard players set @s following 0

#lay down corpse in master bed
data merge entity @s {SleepingX:1,SleepingY:1,SleepingZ:0}
execute as @e[type=minecraft:armor_stand,name="dropped corpse",limit=1] store result score @s deathpos.x run data get entity @s Pos[0]
execute as @e[type=minecraft:armor_stand,name="dropped corpse",limit=1] store result score @s deathpos.z run data get entity @s Pos[2]

#create temporary bed in render distance
execute as @e[type=minecraft:armor_stand,name="dropped corpse",limit=1] at @s run setblock ~ 1 ~ minecraft:red_bed[part=head]

#move corpse to temp bed
execute as @s store result entity @s SleepingX int 1 run scoreboard players get @e[type=minecraft:armor_stand,name="dropped corpse",limit=1] deathpos.x
data merge entity @s {SleepingY:1}
execute as @s store result entity @s SleepingZ int 1 run scoreboard players get @e[type=minecraft:armor_stand,name="dropped corpse",limit=1] deathpos.z

#return the corpse to the marker and remove it
tp @e[limit=1,type=armor_stand,name="dropped corpse"] ~ ~0.5 ~
tp @s @e[limit=1,type=armor_stand,name="dropped corpse"]
execute at @s run kill @e[type=armor_stand,name="dropped corpse",distance=..1]
