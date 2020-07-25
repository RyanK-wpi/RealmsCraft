execute as @s[scores={cooldownHeal=2..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Heal\""}}}}] run replaceitem entity @s weapon.mainhand minecraft:barrier{CustomModelData:1,display:{Name:"\"Heal on Cooldown\"",Lore:["\"Spell Focus\""]}} 1

clear @s[scores={cooldownHeal=1}] minecraft:barrier{display:{Name:"\"Heal on Cooldown\""}}
give @s[scores={cooldownHeal=1}] minecraft:carrot_on_a_stick{CustomModelData:101,display:{Name:"\"Heal\"",Lore:["\"Spell Focus\""]}}
