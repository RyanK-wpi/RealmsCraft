#returns corpse to a lying down position
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Silent:1b,CustomName:"\"dropped corpse\""}
scoreboard players set @s following 0
data merge entity @s {SleepingX:1,SleepingY:1,SleepingZ:0}
tp @s @e[limit=1,type=armor_stand,name="dropped corpse"]
execute at @s run kill @e[type=armor_stand,name="dropped corpse",distance=..1]
