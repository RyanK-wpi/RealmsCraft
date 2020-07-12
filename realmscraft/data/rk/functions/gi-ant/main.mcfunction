#Run as part of rk:main
#Timers for Gi-Ant funtionality
function rk:gi-ant/timer
#Particle Effects for Gi-Ant functionality
function rk:gi-ant/particle
#Logic for handling Bloodied PCs
function rk:gi-ant/bloodied
#Track Gi-Ant mob health (required for tracking phases)
execute as @e[tag=gi-ant] store result score @s mobHealth run data get entity @s Health

#Logic for each mob
function rk:gi-ant/wolf/main
