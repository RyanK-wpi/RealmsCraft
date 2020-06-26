#return the finished corpse to the players death location
data merge entity @s {SleepingX:1,SleepingY:1,SleepingZ:0}
tp @s @e[limit=1,type=armor_stand,name="death location"]
execute at @s run kill @e[type=armor_stand,name="death location",distance=..2]
