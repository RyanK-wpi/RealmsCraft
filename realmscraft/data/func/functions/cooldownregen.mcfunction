scoreboard players operation @s[scores={cooldownRegen=..600}] cooldownRegen = @s shift

tag @s[tag=!cooldownRegen] add cooldownRegen

tag @s[scores={cooldownRegen=600}] remove cooldownRegen
tell @s[scores={cooldownRegen=600}] Regeneration Prepared!
scoreboard players reset @s[scores={cooldownRegen=600}] cooldownRegen
