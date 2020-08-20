#support function for setting up realmscraft questing
#Author: Ryan Keller, Aug 2020

#Set the Gamerules
gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doMobSpawning false
gamerule doWeatherCycle false
gamerule keepInventory true
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule showDeathMessages false
gamerule doImmediateRespawn true

#Set the Time
time set noon

#Create scoreboards if not already made
scoreboard objectives add health health
scoreboard objectives add raycast dummy
scoreboard objectives add MMCount dummy
scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add shift minecraft.custom:minecraft.sneak_time
scoreboard objectives add grab dummy
scoreboard objectives add castMM minecraft.used:minecraft.snowball
scoreboard objectives add magicMissileTime dummy
scoreboard objectives add hasMissile dummy
scoreboard objectives add lightningTime dummy
scoreboard objectives add hasLightning dummy
scoreboard objectives add cooldownHeal dummy
scoreboard objectives add cooldownRA dummy
scoreboard objectives add cooldownLight dummy
scoreboard objectives add cooldownMM dummy
scoreboard objectives add cooldownEnfeeble dummy
scoreboard objectives add cooldownLB dummy
scoreboard objectives add cooldownGuidance dummy
scoreboard objectives add cooldownRD dummy
scoreboard objectives add raisedeadcount dummy
scoreboard objectives add cooldownSoL dummy
scoreboard objectives add cooldownRegen dummy
scoreboard objectives add beckoned dummy
scoreboard objectives add regenerateTime dummy

#Reset deaths/death mechanics
scoreboard players set @a deathLine 0
kill @e[tag=corpse]
execute as @a[tag=dead] run function rcq:tp/tavern
tag @a[tag=dead] remove dead

#Create the marshal team
team add marshals
team join marshals @a[gamemode=creative]
