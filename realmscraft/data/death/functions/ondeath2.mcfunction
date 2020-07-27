#return the finished corpse to the players death location

#get the position of the death, and merge the sleeping data in a bed created at the bottom of the world
data merge entity @s {SleepingX:1,SleepingY:1,SleepingZ:0}

execute as @e[type=minecraft:armor_stand,name="death location",limit=1] store result score @s deathpos.x run data get entity @s Pos[0]
execute as @e[type=minecraft:armor_stand,name="death location",limit=1] store result score @s deathpos.z run data get entity @s Pos[2]

execute as @e[type=minecraft:armor_stand,name="death location",limit=1] at @s run setblock ~ 1 ~ minecraft:red_bed[part=head]

execute as @s store result entity @s SleepingX int 1 run scoreboard players get @e[type=minecraft:armor_stand,name="death location",limit=1] deathpos.x
data merge entity @s {SleepingY:1}
execute as @s store result entity @s SleepingZ int 1 run scoreboard players get @e[type=minecraft:armor_stand,name="death location",limit=1] deathpos.z

#execute as @e[type=minecraft:armor_stand,name="death location",limit=1] run setblock ~ 1 ~ minecraft:air

#return the finished corpse to the players death location, and clean up
tp @s @e[limit=1,type=armor_stand,name="death location"]
execute at @s run kill @e[type=armor_stand,name="death location",distance=..2]
