#Run as part of rk:gi-ant/main
#@s: Gi-Ant mob who is regen AND has taken enough damage to be considered soulless
#Any un-bloodied PC within 3 blocks will become bloodied
execute at @s run msg @a[distance=..3,tag=!bloodied] "Blood sprays all over you!"
execute at @s run tag @a[distance=..3,tag=!bloodied] add bloodied
#Mob has been rendered soulless so remove
kill @s
