scoreboard players add @s raycast 1

execute if entity @p[distance=..1,scores={health=..19}] run scoreboard players set @s raycast 999999
#execute unless entity @e[tag=heal] if entity @s[scores={raycast=20,health=..19}] run tag @s add heal

execute as @s[scores={raycast=1000..}] positioned ^ ^ ^ run tag @p add heal
execute as @s[scores={raycast=1000..}] positioned ^ ^ ^ run particle happy_villager ~ ~1 ~ 0.25 0.25 0.25 1 20

execute if entity @p[tag=heal] run effect give @p minecraft:instant_health 1 0 true
execute if entity @p[tag=heal] run scoreboard players set @s cooldownHeal 200
execute if entity @p[tag=heal] run function func:cooldownheal
execute if entity @p[tag=heal] run scoreboard players set @s click 0

execute as @s[scores={raycast=..20}] positioned ^ ^ ^0.1 run function spells:supportheal