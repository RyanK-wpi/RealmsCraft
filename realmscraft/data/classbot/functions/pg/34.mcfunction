#support function for class selection
#Author: Ryan Keller, Feb 2021

#set page
scoreboard players set @s classbot_pg 34

#clear chat
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]

#Display Classbot page
tellraw @s ["",{"text":"<ClassBot>: ","color":"gold","clickEvent":{"action":"run_command","value":""}},{"text":"As a Caster, you can choose to take two paths in the same school, or one path from two different schools.","color":"blue"},{"text":"\n"},{"text":"[Support]","bold":true,"color":"yellow"},{"text":"        "},{"text":"[Mage]","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger classbot_pg set 315"},"hoverEvent":{"action":"show_text","contents":{"text":"Magic Missile, Ward Undead, Enfeeble Being","color":"aqua"}}},{"text":"        "},{"text":"[Seer]","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/trigger classbot_pg set 317"},"hoverEvent":{"action":"show_text","contents":{"text":"Guidance, Light, Deathwatch","color":"aqua"}}},{"text":"\n"},{"text":"[Support 2]","bold":true,"color":"gray"},{"text":"     "},{"text":"[Mage 2]","bold":true,"color":"gray"},{"text":"     "},{"text":"[Seer 2]","bold":true,"color":"gray"},{"text":"\n"},{"text":"        "},{"text":"[Confirm]","bold":true,"color":"gray"},{"text":"        "},{"text":"[Reset]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger classbot_pg set 31"}},{"text":"\n"},{"text":"[Change Class]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger classbot_pg set -1"}}]
