#Run as part of rk:main
#Timers for Gi-Ant funtionality
function rk:gi-ant/timer
#Particle Effects for Gi-Ant functionality
function rk:gi-ant/particle
#Logic for handling Bloodied PCs
function rk:gi-ant/bloodied
#Track Gi-Ant mob health (required for tracking phases)
execute as @e[tag=gi-ant] store result score @s mobHealth run data get entity @s Health
#Gi-Ant regeneration Logic
execute as @e[tag=alive,tag=gi-ant,scores={mobHealth=..90}] run function rk:gi-ant/regen
#Gi-Ant render soulless Logic
execute as @e[tag=regen,tag=gi-ant,scores={mobHealth=..90}] run function rk:gi-ant/render_soulless
#Gi-Ant rage Logic
execute as @e[tag=regen,tag=gi-ant,scores={mobRegenTime=600..}] run function rk:gi-ant/rage

#Logic for each mob
function rk:gi-ant/wolf/main
