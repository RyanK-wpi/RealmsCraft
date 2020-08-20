#function for picking up corpses (stands the corpse up, making moving it easier)
#Author: Ryan Keller, Aug 2020

tag @e[distance=..3,tag=closest] remove closest
execute as @p at @s run tag @e[distance=0.5..1.5,tag=corpse,sort=nearest,limit=1] add closest

#mark corpse location
execute at @s[tag=closest] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Silent:1b,CustomName:"\"pickup corpse\""}
scoreboard players set @s[tag=closest] following 1

#destroy the temp bed, standing the corpse up
execute as @e[limit=1,type=armor_stand,name="pickup corpse"] at @s run setblock ~ 1 ~ air

#return the corpse to the marker and remove it
tp @e[limit=1,type=armor_stand,name="pickup corpse"] ~ ~0.5 ~
tp @s[tag=closest] @e[limit=1,type=armor_stand,name="pickup corpse"]
execute at @s[tag=closest] run kill @e[type=armor_stand,name="pickup corpse",distance=..1]
tag @s remove closest
