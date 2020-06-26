scoreboard players add @s raycast 1

execute if entity @e[distance=..1,type=!player,type=!villager,type=!item,type=!item_frame,tag=!enfeeble] run scoreboard players set @s raycast 999999
execute if entity @e[distance=..1,tag=boss] run scoreboard players set @s raycast 999999

execute as @s[scores={raycast=1000..}] positioned ^ ^ ^ run tag @e[limit=1,sort=nearest] add enfeeble
execute as @s[scores={raycast=1000..}] positioned ^ ^ ^ run particle smoke ~ ~1 ~ 0 0 0 0.1 20

execute if entity @e[tag=enfeeble] run execute as @e[tag=enfeeble] run function func:enfeeble
execute if entity @e[tag=enfeeble] run scoreboard players set @s cooldownEnfeeble 600
execute if entity @e[tag=enfeeble] run function func:cooldownenfeeble
execute if entity @e[tag=enfeeble] run scoreboard players set @s click 0

execute as @s[scores={raycast=..120}] positioned ^ ^ ^0.1 run function spells:mageenfeeble