#Run as part of rk:gi-ant/main
#@s: Gi-Ant mob who is Alive AND has taken enough damage to trigger regeneration
#Swap alive tag to regen tag
tag @s remove alive
tag @s add regen
#Turn off mob AI
data merge entity @s {NoAI:1b}
#Set "Soul" points (used for Render Souless logic)
data merge entity @s {Health:100}
execute as @s store result score @s mobHealth run data get entity @s Health
#Reset regen timer, just in case
scoreboard players set @s mobRegenTime 0
