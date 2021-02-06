#support function for class selection
#Author: Ryan Keller, Feb 2021

#change weapon score so page does not repeat
scoreboard players set @s weapon -1

#enable players to use trigger
scoreboard players enable @s weapon

#clear chat
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]

#display classbot page
tellraw @s ["",{"text":"<ClassBot>: ","color":"gold","clickEvent":{"action":"run_command","value":""}},{"text":"As a magic user, you can only use one weapon. Please choose between the sword, axe, and shield.","color":"blue"},{"text":"\n"},{"text":"[Sword]","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/trigger weapon set 1"},"hoverEvent":{"action":"show_text","contents":{"text":"Faster attacks, hit multiple enemies, less damage","color":"aqua"}}},{"text":"        "},{"text":"[Axe]","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/trigger weapon set 2"},"hoverEvent":{"action":"show_text","contents":{"text":"More damage, single target, slow attacks","color":"aqua"}}},{"text":"        "},{"text":"[Shield]","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/trigger weapon set 3"},"hoverEvent":{"action":"show_text","contents":{"text":"Excellent defence, no attack","color":"aqua"}}},{"text":"\n"},{"text":"[Change Class]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger classbot_pg set -1"}}]
