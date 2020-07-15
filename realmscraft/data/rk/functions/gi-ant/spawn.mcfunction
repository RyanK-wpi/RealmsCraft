#Run as part of rk:gi-ant/main
#@s: Mob with the spawn_gi-ant tag
#Add alive and gi-ant tags
tag @s add alive
tag @s add gi-ant
#Swap spawn_gi-ant tag for spawn_gi-ant_ext tag
tag @s remove spawn_gi-ant
tag @s add spawn_gi-ant_ext
