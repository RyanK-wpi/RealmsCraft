#support function for giving a player their class spells
#Author: Ryan Keller, Aug 2020

give @s minecraft:carrot_on_a_stick{CustomModelData:121,display:{Name:"\"Guidance\"",Lore:["\"Spell Focus\""]}} 1
scoreboard players set @s cooldownGuidance 0
give @s minecraft:torch{CustomModelData:1,display:{Name:"\"Light\"",Lore:["\"Spell Focus\""]}} 1
tag @s add light
tag @s add deathwatch

give @s[tag=Seer2] minecraft:carrot_on_a_stick{CustomModelData:122,display:{Name:"\"Divine Aid\"",Lore:["\"Spell Focus\""]}} 2
give @s[tag=Seer2] minecraft:carrot_on_a_stick{CustomModelData:123,display:{Name:"\"Vision\"",Lore:["\"Spell Focus\""]}} 1
