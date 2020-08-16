#function that emulates the "deathwatch" spell
#This spell takes effect automatically, and allows the player to remain at their corpse and look around.
#author: Ryan Keller, Aug 2020

#find the corpse at the same spot in the death line
scoreboard players operation @e[type=zombie,tag=corpse] deathLine -= @s deathLine

#create an object that we can manipulate
execute at @e[type=zombie,tag=corpse,scores={deathLine=0},limit=1] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Silent:1b,CustomName:"\"death watch\""}

#get players rotational data, and give it to the armor stand
execute as @e[name="death watch"] store result score @s rot.x run data get entity @p[tag=deathwatch] Rotation[0]
execute as @e[name="death watch"] store result score @s rot.y run data get entity @p[tag=deathwatch] Rotation[1]
execute as @e[name="death watch"] store result entity @s Rotation[0] float 1 run scoreboard players get @s rot.x
execute as @e[name="death watch"] store result entity @s Rotation[1] float 1 run scoreboard players get @s rot.y

#teleport the player to the armor stand and kill it
tp @s @e[name="death watch",sort=nearest,limit=1]
execute as @s at @s run kill @e[type=armor_stand,distance=..1]

#return the death line to original state
scoreboard players operation @e[type=zombie,tag=corpse] deathLine += @s deathLine
