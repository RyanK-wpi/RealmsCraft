#support function for class selection
#Author: Ryan Keller, Feb 2021

#clear class
function classbot:class/clear

#set page
scoreboard players set @s classbot_pg 1

#reset weapon scores
scoreboard players set @s weapon 0

#clear previous chat
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]

#Display Classbot page
tellraw @s ["",{"text":"<ClassBot>: ","color":"gold","clickEvent":{"action":"run_command","value":"/scoreboard players set @s classbot_pg -2"}},{"text":"Hello! Im ClassBot, here to help you setup your class for RealmsCraft questing! There are three classes available: Fighter, Skirmisher, and Caster. Click one to select your class, or hover over the selections to learn more!","color":"blue"},{"text":"\n"},{"text":"[Fighter]","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger classbot_pg set 10"},"hoverEvent":{"action":"show_text","contents":{"text":"Fighters have chainmail, all melee weapons, and a shield","color":"aqua"}}},{"text":"        "},{"text":"[Skirmisher]","bold":true,"color":"#8C4600","clickEvent":{"action":"run_command","value":"/trigger classbot_pg set 20"},"hoverEvent":{"action":"show_text","contents":{"text":"Skirmishers have leather armor, 1 path of spells, and a bow","color":"aqua"}}},{"text":"        "},{"text":"[Caster]","bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/trigger classbot_pg set 30"},"hoverEvent":{"action":"show_text","contents":{"text":"Casters have no armor, but two paths of spells","color":"aqua"}}}]
