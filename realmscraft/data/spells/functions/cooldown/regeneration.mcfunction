#cooldown function for "regeneration"
#Author: Ian Pushee, Ryan Keller, Aug 2020

#set cooldown to (30sec - player shift time)
scoreboard players set @s[scores={cooldownRegen=0..}] cooldownRegen 600
scoreboard players operation @s[scores={cooldownRegen=0..}] cooldownRegen -= @s shift

#alert the player when regeneration refreshes 
tag @s[scores={cooldownRegen=1}] remove cooldownRegen
tellraw @s[scores={cooldownRegen=1}] {"text":"Regeneration Prepared!","color":"blue"}
scoreboard players set @s[scores={cooldownRegen=1}] cooldownRegen 0
