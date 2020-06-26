execute as @s[scores={cooldownEmpower=2..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Empower\""}}}}] run replaceitem entity @s weapon.mainhand minecraft:obsidian{display:{Name:"\"Empower on Cooldown\"",Lore:["\"Spell Focus\""]}} 1

clear @s[scores={cooldownEmpower=1}] minecraft:obsidian{display:{Name:"\"Empower on Cooldown\""}}
give @s[scores={cooldownEmpower=1}] minecraft:carrot_on_a_stick{display:{Name:"\"Empower\"",Lore:["\"Spell Focus\""]}}