#Run as part of rk:gi-ant/bear/main
#@s: Bear with the spawn_gi-ant_ext tag
#Set health value which will trigger bear's regen
scoreboard players set @s mobRegenTrigger 70
#Set health value which will tigger being rendered soulless
scoreboard players set @s mobSoulTrigger 50
#Set length (in ticks) of bear's regen and rage
scoreboard players set @s mobRegenLength 600
scoreboard players set @s mobRageLength 200
#Set health value which will trigger death (only during rage)
scoreboard players set @s mobDeathTrigger 90

#Set MaxHealth (Rage Health) and Health (Starting Health)
attribute @s minecraft:generic.max_health base set 150
data merge entity @s {Health:100}
execute as @s store result score @s mobHealth run data get entity @s Health
