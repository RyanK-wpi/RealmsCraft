execute as @s[scores={cooldownRA=2..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Repair Armor\""}}}}] run replaceitem entity @s weapon.mainhand minecraft:obsidian{display:{Name:"\"Repair Armor on Cooldown\"",Lore:["\"Spell Focus\""]}} 1

clear @s[scores={cooldownRA=1}] minecraft:obsidian{display:{Name:"\"Repair Armor on Cooldown\""}}
give @s[scores={cooldownRA=1}] minecraft:carrot_on_a_stick{CustomModelData:102,display:{Name:"\"Repair Armor\"",Lore:["\"Spell Focus\""]}}
