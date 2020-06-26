tellraw @a [{"color":"red","selector":"@s"},{"text":" has used Guidance","color":"red"}]

scoreboard players set @s cooldownGuidance 3600
execute as @s run function func:cooldownguide
scoreboard players set @s click 0