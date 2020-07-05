scoreboard players add @s raycast 1

execute if entity @e[distance=..1.2,type=zombie,tag=corpse] run scoreboard players set @s raycast 999999

execute as @s[scores={raycast=10000..}] positioned ^ ^ ^ run tag @e[limit=1,sort=nearest,type=zombie,scores={deathLine=1..}] add beckoned

execute if entity @e[tag=beckoned] run scoreboard players set @s click 0
execute as @e[tag=beckoned] positioned as @s run teleport @s ^ ^ ^-0.3 facing entity @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Beckon Corpse\""}}}}] feet
#execute as @e[tag=beckoned] at @s run teleport @s ^ ^ ^0.3 facing entity @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Beckon Corpse\""}}}}] feet
execute as @e[tag=beckoned] run scoreboard players set @s beckoned 20
execute as @e[tag=beckoned] run tag @s remove beckoned

execute as @s[scores={raycast=..400}] positioned ^ ^ ^0.1 run function death:beckoncorpse
