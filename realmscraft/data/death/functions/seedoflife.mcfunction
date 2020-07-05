scoreboard players add @s raycast 1

execute if entity @e[distance=..1,type=zombie,tag=corpse,scores={regenerateTime=0}] run scoreboard players set @s raycast 999999

execute as @s[scores={raycast=1000..}] positioned ^ ^ ^ run tag @e[limit=1,sort=nearest,type=zombie,tag=corpse] add regen

execute if entity @e[tag=regen] run scoreboard players set @s cooldownSoL 2400
execute if entity @e[tag=regen] run function func:cooldownsol
execute if entity @e[tag=regen] run scoreboard players set @s click 0
execute as @e[tag=regen] run scoreboard players set @s regenerateTime 2400
execute as @e[tag=regen] run tag @s add regenerate
execute as @e[tag=regen] run tag @s remove regen

execute as @s[scores={raycast=..20}] positioned ^ ^ ^0.1 run function death:seedoflife
