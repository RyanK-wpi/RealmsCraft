#cooldown function for "enfeeble being"
#Author: Ryan Keller, Aug 2020

#replace spell with cooldown item
execute as @s[scores={cooldownEnfeeble=2..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Enfeeble Being\""}}}}] run replaceitem entity @s weapon.mainhand minecraft:barrier{CustomModelData:1,display:{Name:"\"Enfeeble Being on Cooldown\"",Lore:["\"Spell Focus\""]}} 1

#return spell
clear @s[scores={cooldownEnfeeble=1}] minecraft:barrier{display:{Name:"\"Enfeeble Being on Cooldown\""}}
give @s[scores={cooldownEnfeeble=1}] minecraft:carrot_on_a_stick{CustomModelData:111,display:{Name:"\"Enfeeble Being\"",Lore:["\"Spell Focus\""]}}
