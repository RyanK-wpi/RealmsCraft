scoreboard players add @s raycast 1

execute if entity @p[distance=..1,tag=!empower] run scoreboard players set @s raycast 999999
#execute unless entity @e[tag=empower] if entity @s[tag=!empower,scores={raycast=20}] run tag @s add empower

execute as @s[scores={raycast=1000..}] positioned ^ ^ ^ run tag @p add empower
execute as @s[scores={raycast=1000..}] positioned ^ ^ ^ run particle flame ~ ~1 ~ 0 0 0 0.1 20

execute if entity @p[tag=empower] run execute as @p[tag=empower] run function func:empower
execute if entity @p[tag=empower] run scoreboard players set @s cooldownEmpower 2400
execute if entity @p[tag=empower] run function func:cooldownempower
execute if entity @p[tag=empower] run scoreboard players set @s click 0

execute as @s[scores={raycast=..20}] positioned ^ ^ ^0.1 run function spells:supportempower