#Run as part of rk:gi-ant/main
#Make Gi-Ant Wolves always angry
execute as @e[type=minecraft:wolf,tag=gi-ant] run data merge entity @s {AngerTime:100}
#Make regenerating Gi-Ant Wolves always sit
execute as @e[type=minecraft:wolf,tag=gi-ant,tag=regen] run data merge entity @s {Sitting:1b}
#Make raging Gi-Ant Wolves stop sitting
execute as @e[type=minecraft:wolf,tag=gi-ant,tag=rage] run data merge entity @s {Sitting:0b}
