#check when player dies
execute as @a[scores={deaths=1..}] run function death:ondeath

execute as @e[scores={corpsecreate=1..}] run scoreboard players remove @s corpsecreate 1
execute as @e[type=zombie,scores={following=0,corpsecreate=1}] run function death:ondeath2

#pick up a corpse
execute as @e[type=zombie,scores={corpsecreate=0}] at @s if entity @p[distance=..2,tag=!boss] run function death:corpsecarry

#drop a corpse
execute as @e[type=zombie,scores={corpsecreate=0}] at @s unless entity @p[distance=..2,tag=!boss] run function death:corpsedrop
