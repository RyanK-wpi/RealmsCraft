tag @s add mm
scoreboard players set @s MMCount 0
scoreboard players set @s cooldownMM 0
give @s minecraft:wither_skeleton_skull{display:{Name:"\"Ward Undead\"",Lore:["\"Spell Focus\""]}}
give @s minecraft:carrot_on_a_stick{CustomModelData:111,display:{Name:"\"Enfeeble Being\"",Lore:["\"Spell Focus\""]}} 1
scoreboard players set @s cooldownEnfeeble 0

give @s[tag=Mage2] minecraft:trident{display:{Name:"\"Lightning Bolt\"",Lore:["\"Spell Attack\""]},AttributeModifiers:[{Amount:0}]}
scoreboard players set @s cooldownLB 0
tag @s[tag=Mage2] add regeneration
