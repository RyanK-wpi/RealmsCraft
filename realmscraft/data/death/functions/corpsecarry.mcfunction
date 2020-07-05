execute as @p at @s if entity @e[distance=..2,scores={following=1}] unless entity @s[nbt={SelectedItem:{id:"minecraft:wither_skeleton_skull",tag:{display:{Name:"\"Zombie Walk\""}}}}] run effect give @s slowness 1 2 true

teleport @s ^ ^ ^0.3 facing entity @p[distance=1..2.2] feet
