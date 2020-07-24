scoreboard players add @s raycast 1

execute if entity @p[distance=..1,tag=!Caster] run scoreboard players set @s raycast 999999
#execute if entity @s[tag=!Caster,scores={raycast=20}] run tag @s add repair

execute as @s[scores={raycast=1000..}] positioned ^ ^ ^ run tag @p[sort=nearest] add repair
execute as @s[scores={raycast=1000..}] positioned ^ ^ ^ run particle crit ~ ~1 ~ 0.1 0.1 0.1 0.1 20 force

execute if entity @p[tag=repair] run execute as @p[tag=repair] run function func:repair
execute if entity @p[tag=repair] run scoreboard players set @s cooldownRA 900
execute if entity @p[tag=repair] run function func:cooldownrepair
execute if entity @p[tag=repair] run scoreboard players set @s click 0

execute as @s[scores={raycast=..20}] positioned ^ ^ ^0.1 run function spells:supportarmor