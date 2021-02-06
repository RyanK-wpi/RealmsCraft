#support function for creating a corpse
#Author: Ryan Keller, Aug 2020

#increment the death line
execute as @e[scores={deathLine=1..}] run scoreboard players add @s deathLine 1
scoreboard players add @s deathLine 1

#tag the players
tag @s add dead
scoreboard players set @s deaths 0

#mark the players death location
execute at @s run summon armor_stand ~ ~0.5 ~ {Invisible:1b,Invulnerable:1b,Silent:1b,CustomName:"\"death location\""}

#create the corpsecreator if not already made
#setblock 1 0 0 redstone_block

#teleport the player to the death box, unless they have deathwatch
tp @s[tag=!deathwatch] 1122.5 110 136.5 -90 0
gamemode spectator @s[tag=deathwatch]
tp @s[tag=deathwatch] @e[name="death location",limit=1]

#create a corpse, delay required to ensure head is placed on zombie by dispenser in "createcorpse" structure
summon zombie 1 1 2 {Invulnerable:1,PersistenceRequired:1,Silent:1,NoAI:1,CanPickUpLoot:1b}
execute as @e[type=zombie,x=1,y=1,z=2,distance=..2] run function death:corpse_scores
execute at @e[type=armor_stand,name="death location"] run tp @e[type=item,distance=..2] 1.5 3.75 3.5

#if player has regeneration feat, begin 2 min corpse regen
execute as @s[tag=regeneration,scores={cooldownRegen=0}] at @s run function spells:spell/regeneration
