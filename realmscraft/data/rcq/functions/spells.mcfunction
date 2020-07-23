give @s minecraft:carrot_on_a_stick{CustomModelData:101,display:{Name:"\"Heal\"",Lore:["\"Spell Focus\""]}} 1
give @s minecraft:carrot_on_a_stick{CustomModelData:102,display:{Name:"\"Repair Armor\"",Lore:["\"Spell Focus\""]}} 1
give @s minecraft:torch{CustomModelData:1,display:{Name:"\"Light\"",Lore:["\"Spell Focus\""]}} 1
give @s minecraft:carrot_on_a_stick{display:{Name:"\"Empower\"",Lore:["\"Spell Focus\""]}} 1

give @s minecraft:wither_skeleton_skull{display:{Name:"\"Ward Undead\"",Lore:["\"Spell Focus\""]}}
give @s minecraft:carrot_on_a_stick{CustomModelData:111,display:{Name:"\"Enfeeble Being\"",Lore:["\"Spell Focus\""]}} 1
give @s minecraft:trident{display:{Name:"\"Lightning Bolt\"",Lore:["\"Spell Attack\""]},AttributeModifiers:[{Amount:0}]}

give @s minecraft:fermented_spider_eye{display:{Name:"\"Arcane Eye\"",Lore:["\"Spell Focus\""]}}
give @s minecraft:carrot_on_a_stick{CustomModelData:121,display:{Name:"\"Guidance\"",Lore:["\"Spell Focus\""]}} 1
give @s minecraft:carrot_on_a_stick{CustomModelData:122,display:{Name:"\"Divine Aid\"",Lore:["\"Spell Focus\""]}} 2
give @s minecraft:carrot_on_a_stick{CustomModelData:123,display:{Name:"\"Vision\"",Lore:["\"Spell Focus\""]}} 1

give @s minecraft:carrot_on_a_stick{CustomModelData:202,display:{Name:"\"Raise Dead\"",Lore:["\"Spell Focus\""]}} 1
give @s minecraft:carrot_on_a_stick{CustomModelData:201,display:{Name:"\"Cry of Life\"",Lore:["\"Spell Focus\""]}} 1
give @s minecraft:wither_skeleton_skull{display:{Name:"\"Zombie Walk\"",Lore:["\"Spell Focus\""]}} 1
give @s minecraft:carrot_on_a_stick{CustomModelData:204,display:{Name:"\"Beckon Corpse\"",Lore:["\"Spell Focus\""]}} 1
give @s minecraft:carrot_on_a_stick{CustomModelData:203,display:{Name:"\"Seed of Life\"",Lore:["\"Spell Focus\""]}} 1

scoreboard players set @s MMCount 0
scoreboard players set @s cooldownMM 0

tag @s add light
tag @s add mm
tag @s add deathwatch
tag @s add regeneration
