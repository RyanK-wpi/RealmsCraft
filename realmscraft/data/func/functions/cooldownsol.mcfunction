execute as @s[scores={cooldownSoL=2..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Seed of Life\""}}}}] run replaceitem entity @s weapon.mainhand minecraft:obsidian{display:{Name:"\"Seed of Life on Cooldown\"",Lore:["\"Spell Focus\""]}} 1

clear @s[scores={cooldownSoL=1}] minecraft:obsidian{display:{Name:"\"Seed of Life on Cooldown\""}}
give @s[scores={cooldownSoL=1}] minecraft:carrot_on_a_stick{CustomModelData:203,display:{Name:"\"Seed of Life\"",Lore:["\"Spell Focus\""]}}
