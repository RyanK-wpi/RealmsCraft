#function that emulates the "Vision" spell
#To use this spell, right click, and a message will appear.
#author: Ryan Keller, Aug 2020

#decalare a usage of Vision and who used it
tellraw @a [{"color":"green","selector":"@s"},{"text":" has used Vision!","color":"green"}]

#remove vision after use
clear @s carrot_on_a_stick{display:{Name:"\"Vision\"",Lore:["\"Spell Focus\""]}} 1
give @s minecraft:barrier{CustomModelData:1,display:{Name:"\"All Visions used\"",Lore:["\"Spell Focus\""]}} 1
scoreboard players set @s click 0
