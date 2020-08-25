#Run as part of rk:gi-ant/main
#Initialize newly spawned Gi-Ant Bears
execute as @e[type=minecraft:polar_bear,tag=spawn_gi-ant_ext] run function rk:gi-ant/bear/spawn
#Make Gi-Ant Bears always angry
execute as @e[type=minecraft:polar_bear,tag=gi-ant] run data merge entity @s {AngerTime:100}
#Make regenerating Gi-Ant Bears always sit
execute as @e[type=minecraft:polar_bear,tag=gi-ant,tag=regen] run data merge entity @s {Sitting:1b}
#Make raging Gi-Ant Bears stop sitting
execute as @e[type=minecraft:polar_bear,tag=gi-ant,tag=rage] run data merge entity @s {Sitting:0b}
