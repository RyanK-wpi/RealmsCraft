#Run as part of rk:gi-ant/main
#Initialize newly spawned Gi-Ant Spider
execute as @e[type=minecraft:spider,tag=spawn_gi-ant_ext] run function rk:gi-ant/spider/spawn
#Make Gi-Ant Spiders always angry
execute as @e[type=minecraft:spider,tag=gi-ant] run data merge entity @s {AngerTime:100}
#Make regenerating Gi-Ant Spiders always sit
execute as @e[type=minecraft:spider,tag=gi-ant,tag=regen] run data merge entity @s {Sitting:1b}
#Make raging Gi-Ant Spider stop sitting
execute as @e[type=minecraft:spider,tag=gi-ant,tag=rage] run data merge entity @s {Sitting:0b}
