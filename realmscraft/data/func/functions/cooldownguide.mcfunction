execute as @s[scores={cooldownGuidance=2..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Guidance\""}}}}] run replaceitem entity @s weapon.mainhand minecraft:barrier{CustomModelData:1,display:{Name:"\"Guidance on Cooldown\"",Lore:["\"Spell Focus\""]}} 1

clear @s[scores={cooldownGuidance=1}] minecraft:barrier{display:{Name:"\"Guidance on Cooldown\""}}
give @s[scores={cooldownGuidance=1}] minecraft:carrot_on_a_stick{CustomModelData:122,display:{Name:"\"Guidance\"",Lore:["\"Spell Focus\""]}}
