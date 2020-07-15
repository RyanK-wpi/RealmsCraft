#Run as part of rk:gi-ant/main
#@s: Gi-Ant mob who is rage AND their rage time has finished
#Kill the mob if they've been dealt enough damage during their rage (in which case, no further code is executed)
execute if score @s mobHealth <= @s mobDeathTrigger run kill @s
#Mob survived, so...
#Swap rage tag for alive tag
tag @s remove rage
tag @s add alive
#Reset mobRageTime
scoreboard players set @s mobRageTime 0
