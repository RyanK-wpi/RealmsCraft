#function that emulates the "Divine Aid" spell
#To use this spell, right click, and a message will appear.
#author: Ryan Keller, Aug 2020

#decalare a usage of Divine aid and who used it
tellraw @a [{"color":"yellow","selector":"@s"},{"text":" has used Divine Aid","color":"yellow"}]

#remove one use of divine aid
clear @s carrot_on_a_stick{display:{Name:"\"Divine Aid\"",Lore:["\"Spell Focus\""]}} 1
execute as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Divine Aid\""}}}]}] run give @s minecraft:barrier{CustomModelData:1,display:{Name:"\"All Divine Aids used\"",Lore:["\"Spell Focus\""]}} 1
scoreboard players set @s click 0
