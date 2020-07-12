#Run as part of rk:gi-ant/main
#@s: Gi-Ant mob who is regen AND their regen time has finished
#Swap regen tag for rage tag
tag @s remove regen
tag @s add rage
#Turn AI back on
data merge entity @s {NoAI:0b}
#Heal mob
data merge entity @s {Health:100}
execute as @s store result score @s mobHealth run data get entity @s Health
#Reset mobRegenTime
scoreboard players set @s mobRegenTime 0
#Rest mobRageTime (just in case)
scoreboard players set @s mobRageTime 0
