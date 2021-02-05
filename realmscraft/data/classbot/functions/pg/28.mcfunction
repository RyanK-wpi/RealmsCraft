#support function for class selection
#Author: Ryan Keller, Feb 2021

#set class
function classbot:class/skirmisher_seer

#set page
scoreboard players set @s classbot_pg -2

#clear chat
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]

#Display Classbot page
tellraw @s [{"text":"<ClassBot>: ","color":"gold"},{"text":"You have chosen Skirmisher Seer! Have fun!","color":"blue"},{"text":"\n"},{"text":"[Change Class]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger classbot_pg set -1"}}]
