gamerule commandBlockOutput false
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doMobSpawning false
gamerule doWeatherCycle false
gamerule keepInventory true
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule showDeathMessages false

time set noon

scoreboard objectives add health health
scoreboard objectives add raycast dummy
scoreboard objectives add MMCount dummy
scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add grab minecraft.used:minecraft.shield
scoreboard objectives add castMM minecraft.used:minecraft.snowball
scoreboard objectives add magicMissileTime dummy
scoreboard objectives add hasMissile dummy
scoreboard objectives add lightningTime dummy
scoreboard objectives add hasLightning dummy
scoreboard objectives add cooldownHeal dummy
scoreboard objectives add cooldownRA dummy
scoreboard objectives add cooldownTorch dummy
scoreboard objectives add cooldownEmpower dummy
scoreboard objectives add cooldownMM dummy
scoreboard objectives add cooldownEnfeeble dummy
scoreboard objectives add cooldownLB dummy
scoreboard objectives add cooldownGuidance dummy
scoreboard objectives add cooldownVision dummy
scoreboard objectives add cooldownRD dummy
scoreboard objectives add cooldownSoL dummy
scoreboard objectives add beckoned dummy
scoreboard objectives add regenerateTime dummy

team add marshals
team join marshals @a[gamemode=creative]
