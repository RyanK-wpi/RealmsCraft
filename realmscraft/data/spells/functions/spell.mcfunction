execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Heal\""}}}}] at @s positioned ~ ~0.6 ~ run function spells:supportheal
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Repair Armor\""}}}}] at @s positioned ~ ~0.6 ~ run function spells:supportarmor
execute as @a[nbt={SelectedItem:{id:"minecraft:torch",tag:{display:{Name:"\"Light\""}}}}] at @s run function spells:supportlight
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Empower\""}}}}] at @s positioned ~ ~0.6 ~ run function spells:supportempower

execute as @a[scores={castMM=1..}] at @s run function func:castmissile
function spells:magemm
execute as @a[nbt={SelectedItem:{id:"minecraft:wither_skeleton_skull",tag:{display:{Name:"\"Ward Undead\""}}}}] at @s run function spells:mageward
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Enfeeble Being\""}}}}] at @s positioned ~ ~0.6 ~ run function spells:mageenfeeble
function spells:magebolt

execute as @a[nbt={SelectedItem:{id:"minecraft:fermented_spider_eye"}}] at @s run function spells:seereye
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Guidance\""}}}}] run function spells:seerguide
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Divine Aid\""}}}}] run function spells:seeraid
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Vision\""}}}}] run function spells:seervision

execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Raise Dead\""}}}}] at @s positioned ~ ~0.6 ~ run function death:raisedead
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Cry of Life\""}}}}] at @s positioned ~ ~0.6 ~ run function death:cryoflife
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Beckon Corpse\""}}}}] at @s positioned ~-0.5 ~1.6 ~ run function death:beckoncorpse
execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Seed of Life\""}}}}] at @s positioned ~ ~0.6 ~ run function death:seedoflife

tag @a remove heal
tag @a remove repair
tag @a remove empower
tag @e remove enfeeble

scoreboard players set @a raycast 0
scoreboard players set @a click 0

#invisible carrot on a stick used for grabbing corpses, only exists if nothing in the players main hand
clear @a[nbt=!{SelectedItem:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Grab\""}}}]}] minecraft:carrot_on_a_stick{display:{Name:"\"Grab\""}}
execute as @a[nbt=!{SelectedItem:{}}] run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:"\"Grab\""}}

execute as @a[scores={click=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Grab\""}}}}] run scoreboard players add @s grab 1
