#support function for class selection
#Author: Ryan Keller, Feb 2021

#set class
function classbot:class/caster_sup_mage

#set page
scoreboard players set @s classbot_pg -2

#clear chat
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]

#Display Classbot page
tellraw @s ["",{"text":"<ClassBot>: ","color":"gold","clickEvent":{"action":"run_command","value":""}},{"text":"You have chosen Caster Support Mage! Have fun!","color":"blue"},{"text":"\n"},{"text":"[Change Class]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger classbot_pg set -1"}}]
