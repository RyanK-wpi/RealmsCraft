#function that emulates the "beckon corpse" spell
#To use this spell, spam click in the direction of a corpse to beckon it towards you.
#author: Ryan Keller, Aug 2020

#increment the raycast
scoreboard players add @s raycast 1

#check for desired entity
execute if entity @e[distance=..1.2,type=zombie,tag=corpse] run scoreboard players set @s raycast 999999

#spell effects
execute as @s[scores={raycast=10000..}] positioned ^ ^ ^ run tag @e[limit=1,sort=nearest,type=zombie,scores={deathLine=1..}] add beckoned

execute if entity @e[tag=beckoned] run scoreboard players set @s click 0
#teleport the beckoned corpse towards the beckoner
execute as @e[tag=beckoned] positioned as @s run teleport @s ^ ^ ^-0.3 facing entity @p[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Beckon Corpse\""}}}}] feet
#stops corpse from falling for 1 second
execute as @e[tag=beckoned] run scoreboard players set @s beckoned 20
#resets corpse for next beckoning
execute as @e[tag=beckoned] run tag @s remove beckoned

#if no entity found, move the ray forward and try again (until reaching a range limit)
execute if block ~ ~ ~ #spells:spell_permeable as @s[scores={raycast=..400}] positioned ^ ^ ^0.1 run function spells:spell/beckon_corpse
