#loop function for player death
#Author: Ryan Keller, Aug 2020

#check when player dies
execute as @a[scores={deaths=1..}] at @s run function death:on_death

execute as @e[scores={corpsecreate=1..}] run scoreboard players remove @s corpsecreate 1
execute as @e[type=zombie,scores={following=0,corpsecreate=1}] run function death:on_death_2

#keep deathwatched players with their corpse
execute as @a[gamemode=spectator,tag=deathwatch] run function spells:spell/deathwatch

#regenerate corpses with regeneration
execute as @e[tag=regenerate] run function spells:func/regenerate

#pick up a corpse
execute as @e[type=zombie,tag=corpse,scores={following=0}] at @s positioned ~0.5 ~ ~ if entity @p[distance=..2,gamemode=adventure,tag=!boss,scores={grab=1}] unless entity @e[distance=..3.5,scores={following=1}] run function death:corpse/pickup
execute as @e[type=zombie,scores={following=1}] at @s if entity @p[distance=..2,gamemode=adventure,tag=!boss,scores={grab=1}] run function death:corpse/carry
execute as @e[type=zombie,scores={following=1}] at @s if entity @p[distance=..2,gamemode=adventure,nbt={SelectedItem:{id:"minecraft:wither_skeleton_skull",tag:{display:{Name:"\"Zombie Walk\""}}}}] run function death:corpse/carry

#drop a corpse
execute as @a[scores={grab=2..}] run scoreboard players set @s grab 0
execute as @a[scores={grab=1}] at @s unless entity @e[distance=..2.01,type=zombie,scores={corpsecreate=0}] run scoreboard players set @s grab 0
execute as @e[type=zombie,tag=corpse,scores={following=1}] at @s unless entity @p[distance=..2,gamemode=adventure,tag=!boss,scores={grab=1}] run function death:corpse/drop

#give corpses "gravity," unless they have recently been beckoned by beckon corpse
execute as @e[scores={beckoned=1..}] run scoreboard players remove @s beckoned 1
execute as @e[tag=corpse,scores={beckoned=0}] positioned as @s if block ~ ~-0.01 ~ #spells:spell_permeable run tp @s ~ ~-0.1 ~
