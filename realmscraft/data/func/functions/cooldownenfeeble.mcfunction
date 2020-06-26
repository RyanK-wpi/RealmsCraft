execute as @s[scores={cooldownEnfeeble=2..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Enfeeble Being\""}}}}] run replaceitem entity @s weapon.mainhand minecraft:obsidian{display:{Name:"\"Enfeeble Being on Cooldown\"",Lore:["\"Spell Focus\""]}} 1

clear @s[scores={cooldownEnfeeble=1}] minecraft:obsidian{display:{Name:"\"Enfeeble Being on Cooldown\""}}
give @s[scores={cooldownEnfeeble=1}] minecraft:carrot_on_a_stick{display:{Name:"\"Enfeeble Being\"",Lore:["\"Spell Focus\""]}}