scoreboard players remove @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Recast Regeneration\""}}}},scores={cooldownRegen=2..},tag=!dead] cooldownRegen 1

give @s[tag=!cooldownRegen] minecraft:carrot_on_a_stick{display:{Name:"\"Recast Regeneration\"",Lore:["\"Spell Focus\""]}}
tag @s[tag=!cooldownRegen] add cooldownRegen

tag @s[scores={cooldownRegen=1}] remove cooldownRegen
clear @s[scores={cooldownRegen=1}] minecraft:carrot_on_a_stick{display:{Name:"\"Recast Regeneration\""}}
scoreboard players reset @s[scores={cooldownRegen=1}] cooldownRegen
