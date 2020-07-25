#stands the corpse up, making moving it easier
execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Silent:1b,CustomName:"\"pickup corpse\""}
scoreboard players set @s following 1
data merge entity @s {SleepingX:1,SleepingY:1,SleepingZ:1}
tp @s @e[limit=1,type=armor_stand,name="pickup corpse"]
execute at @s run kill @e[type=armor_stand,name="pickup corpse",distance=..1]
