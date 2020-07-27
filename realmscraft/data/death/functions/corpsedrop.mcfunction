#returns corpse to a lying down position
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Silent:1b,CustomName:"\"dropped corpse\""}
scoreboard players set @s following 0

data merge entity @s {SleepingX:1,SleepingY:1,SleepingZ:0}
execute as @e[type=minecraft:armor_stand,name="dropped corpse",limit=1] store result score @s deathpos.x run data get entity @s Pos[0]
execute as @e[type=minecraft:armor_stand,name="dropped corpse",limit=1] store result score @s deathpos.z run data get entity @s Pos[2]

execute as @e[type=minecraft:armor_stand,name="dropped corpse",limit=1] at @s run setblock ~ 1 ~ minecraft:red_bed[part=head]

execute as @s store result entity @s SleepingX int 1 run scoreboard players get @e[type=minecraft:armor_stand,name="dropped corpse",limit=1] deathpos.x
data merge entity @s {SleepingY:1}
execute as @s store result entity @s SleepingZ int 1 run scoreboard players get @e[type=minecraft:armor_stand,name="dropped corpse",limit=1] deathpos.z

#execute as @e[type=minecraft:armor_stand,name="dropped corpse",limit=1] run setblock ~ 1 ~ minecraft:air

tp @s @e[limit=1,type=armor_stand,name="dropped corpse"]
execute at @s run kill @e[type=armor_stand,name="dropped corpse",distance=..1]
