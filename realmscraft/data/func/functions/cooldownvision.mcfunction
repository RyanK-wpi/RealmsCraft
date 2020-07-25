execute as @s[scores={cooldownVision=2..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Vision\""}}}}] run replaceitem entity @s weapon.mainhand minecraft:barrier{CustomModelData:1,display:{Name:"\"Vision on Cooldown\"",Lore:["\"Spell Focus\""]}} 1

clear @s[scores={cooldownVision=1}] minecraft:barrier{display:{Name:"\"Vision on Cooldown\""}}
give @s[scores={cooldownVision=1}] minecraft:carrot_on_a_stick{CustomModelData:123,display:{Name:"\"Vision\"",Lore:["\"Spell Focus\""]}}
