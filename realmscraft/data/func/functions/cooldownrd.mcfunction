execute as @s[scores={cooldownRD=2..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Raise Dead\""}}}}] run replaceitem entity @s weapon.mainhand minecraft:barrier{CustomModelData:1,display:{Name:"\"Raise Dead on Cooldown\"",Lore:["\"Spell Focus\""]}} 1

clear @s[scores={cooldownRD=1}] minecraft:barrier{display:{Name:"\"Raise Dead on Cooldown\""}}
give @s[scores={cooldownRD=1}] minecraft:carrot_on_a_stick{CustomModelData:202,display:{Name:"\"Raise Dead\"",Lore:["\"Spell Focus\""]}}
