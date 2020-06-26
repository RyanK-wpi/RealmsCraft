execute as @s run particle nautilus ~ ~ ~ 1 1 1 0.1 1

execute as @e[type=#spells:undead] at @s if block ^ ^0 ^-1 air run teleport @s ^ ^0 ^-0.5 facing entity @p[distance=..2.8,nbt={SelectedItem:{id:"minecraft:wither_skeleton_skull",tag:{display:{Name:"\"Ward Undead\""}}}}] feet