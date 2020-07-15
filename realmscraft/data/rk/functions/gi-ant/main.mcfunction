#Run as part of rk:main
#Initialize newly spawned Gi-Ant mobs
execute as @e[tag=spawn_gi-ant] run function rk:gi-ant/spawn
#Timers for Gi-Ant funtionality
function rk:gi-ant/timer
#Particle Effects for Gi-Ant functionality
function rk:gi-ant/particle
#Logic for handling Bloodied PCs
function rk:gi-ant/bloodied
#Track Gi-Ant mob health (required for tracking phases)
execute as @e[tag=gi-ant] store result score @s mobHealth run data get entity @s Health

#Gi-Ant Mob Stages:
# 1. Alive
# 2. Takes enough damage --> Regenerating
# 3a. Takes enough soul blows --> Rendered Soulless
# 3b. Regenerating finishes --> Raging
# 4a. Takes enough damage during rage --> Dead
# 4b. Rage finished --> Alive (loop back to 1)
#Gi-Ant regeneration Logic (Check if mob's health is <= to their configured regen trigger value)
execute as @e[tag=alive,tag=gi-ant] if score @s mobHealth <= @s mobRegenTrigger run function rk:gi-ant/regen
#Gi-Ant render soulless Logic (Check if mob's health is <= to their configured soul trigger value)
execute as @e[tag=regen,tag=gi-ant] if score @s mobHealth <= @s mobSoulTrigger run function rk:gi-ant/render_soulless
#Gi-Ant rage Logic (Check if mob's time spent regenerating is >= their regen length)
execute as @e[tag=regen,tag=gi-ant] if score @s mobRegenTime >= @s mobRegenLength run function rk:gi-ant/rage
#Gi-Ant post rage Logic (Check if mob's time spent raging is >= their rage length)
execute as @e[tag=rage,tag=gi-ant] if score @s mobRageTime >= @s mobRageLength run function rk:gi-ant/post_rage

#Additional logic for each mob type
function rk:gi-ant/wolf/main

#Remove spawn_gi-ant_ext tag from any newly spawned mob
execute as @e[tag=spawn_gi-ant_ext] run tag @s remove spawn_gi-ant_ext
