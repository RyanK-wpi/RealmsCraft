execute as @s positioned ~ ~1.6 ~ if entity @e[distance=..0.6,nbt={Item:{id:"minecraft:snowball",tag:{display:{Name:"\"Magic Missile\""}}}}] run scoreboard players remove @s MMCount 1
scoreboard players remove @s castMM 1
#execute as @s positioned ~ ~1.6 ~ run tag @e[type=minecraft:snowball,distance=..0.6] add magicMissile
