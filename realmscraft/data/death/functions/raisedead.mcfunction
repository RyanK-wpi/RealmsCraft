scoreboard players add @s raycast 1

execute if entity @e[distance=..1,type=zombie,scores={deathLine=1..}] run scoreboard players set @s raycast 999999

execute as @s[scores={raycast=1000..}] positioned ^ ^ ^ run tag @e[limit=1,sort=nearest,type=zombie,scores={deathLine=1..}] add revive

execute if entity @e[tag=revive] run scoreboard players set @s cooldownRD 600
execute if entity @e[tag=revive] run function func:cooldownrd
execute if entity @e[tag=revive] run scoreboard players set @s click 0
execute as @e[tag=revive] run function death:revive

execute as @s[scores={raycast=..20}] positioned ^ ^ ^0.1 run function death:raisedead
