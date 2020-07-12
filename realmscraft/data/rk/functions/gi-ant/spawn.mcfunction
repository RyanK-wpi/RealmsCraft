#Run as part of rk:gi-ant/main
#@s: Mob with the spawn_gi-ant tag
#Add alive and gi-ant tags, remove spawn_gi-ant tag
tag @s add alive
tag @s add gi-ant
tag @s remove spawn_gi-ant
#Set MaxHealth and Health
attribute @s minecraft:generic.max_health base set 100
data merge entity @s {Health:100}
execute as @s store result score @s mobHealth run data get entity @s Health
