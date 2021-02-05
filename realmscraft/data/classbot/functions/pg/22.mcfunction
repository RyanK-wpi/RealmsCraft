#support function for class selection
#Author: Ryan Keller, Feb 2021

#set page
scoreboard players set @s classbot_pg 22

#clear chat
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]

#Display Classbot page
tellraw @s ["",{"text":"<ClassBot>: ","color":"gold","clickEvent":{"action":"run_command","value":""}},{"text":"As a Skirmisher, you can choose between three paths of magic:","color":"blue"},{"text":"\n"},{"text":"[Support]","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger classbot_pg set 23"},"hoverEvent":{"action":"show_text","contents":{"text":"Heal Limb, Repair Armor, Raise Dead","color":"aqua"}}},{"text":"        "},{"text":"[Mage]","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger classbot_pg set 25"},"hoverEvent":{"action":"show_text","contents":{"text":"Magic Missile, Ward Undead, Enfeeble Being","color":"aqua"}}},{"text":"        "},{"text":"[Seer]","bold":true,"clickEvent":{"action":"run_command","value":"/trigger classbot_pg set 27"},"hoverEvent":{"action":"show_text","contents":{"text":"Guidance, Light, Deathwatch","color":"aqua"}}},{"text":"\n"},{"text":"[Change Class]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger classbot_pg set -1"}}]
