scoreboard players set @s[scores={cooldownRegen=0..}] cooldownRegen 600
scoreboard players operation @s[scores={cooldownRegen=0..}] cooldownRegen -= @s shift

tag @s[tag=!cooldownRegen] add cooldownRegen

tag @s[scores={cooldownRegen=1}] remove cooldownRegen
#tell @s[scores={cooldownRegen=1}] Regeneration Prepared!
tellraw @s[scores={cooldownRegen=1}] {"text":"Regeneration Prepared!","color":"blue"}
scoreboard players reset @s[scores={cooldownRegen=1}] cooldownRegen
