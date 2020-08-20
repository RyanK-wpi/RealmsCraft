#loop function for spells
#Author: Ryan Keller, Aug 2020

#check for use of each spell, sorted by class
#support
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Heal\""}}}}] at @s positioned ~ ~0.6 ~ positioned ^ ^ ^1.2 run function spells:spell/heal_limb
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Repair Armor\""}}}}] at @s positioned ~ ~0.6 ~ positioned ^ ^ ^1.2 run function spells:spell/repair_armor
execute as @a[scores={click=1..,raisedeadcount=..4},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Raise Dead\""}}}}] at @s positioned ~ ~0.6 ~ run function spells:spell/raise_dead
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Cry of Life\""}}}}] at @s positioned ~ ~0.6 ~ run function spells:spell/cry_of_life
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Seed of Life\""}}}}] at @s positioned ~ ~0.6 ~ positioned ^ ^ ^1.2 run function spells:spell/seed_of_life

#mage
execute as @a[scores={castMM=1..}] at @s run function spells:func/missile/cast
function spells:spell/magic_missile
execute as @a[nbt={SelectedItem:{id:"minecraft:wither_skeleton_skull",tag:{display:{Name:"\"Ward Undead\""}}}}] at @s run function spells:spell/ward_undead
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Enfeeble Being\""}}}}] at @s positioned ~ ~0.6 ~ run function spells:spell/enfeeble_being
function spells:spell/lightning_bolt

#seer
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Guidance\""}}}}] run function spells:spell/guidance
execute as @a[nbt={SelectedItem:{id:"minecraft:torch",tag:{display:{Name:"\"Light\""}}}}] at @s run function spells:spell/light
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:torch",tag:{display:{Name:"\"Light\""}}}]}] at @s run function spells:spell/light
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Divine Aid\""}}}}] run function spells:spell/divine_aid
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Vision\""}}}}] run function spells:spell/vision

#unsorted (necromancer?)
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Beckon Corpse\""}}}}] at @s positioned ~-0.5 ~1.6 ~ run function spells:spell/beckon_corpse

#get rid of excess tags and scores
tag @a remove heal
tag @a remove repair
tag @a remove empower
tag @e remove enfeeble

scoreboard players set @a raycast 0
