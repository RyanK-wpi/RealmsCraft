#cooldown function for "seed of life"
#Author: Ryan Keller, Aug 2020

#replace spell with cooldown item
execute as @s[scores={cooldownSoL=2..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Seed of Life\""}}}}] run replaceitem entity @s weapon.mainhand minecraft:barrier{CustomModelData:1,display:{Name:"\"Seed of Life on Cooldown\"",Lore:["\"Spell Focus\""]}} 1

#return spell
clear @s[scores={cooldownSoL=1}] minecraft:barrier{display:{Name:"\"Seed of Life on Cooldown\""}}
give @s[scores={cooldownSoL=1}] minecraft:carrot_on_a_stick{CustomModelData:203,display:{Name:"\"Seed of Life\"",Lore:["\"Spell Focus\""]}}
