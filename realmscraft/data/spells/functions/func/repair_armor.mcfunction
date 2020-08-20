#support function for casting "repair armor"
#Author: Ryan Keller, Aug 2020

clear @s[tag=Fighter] minecraft:chainmail_helmet
clear @s[tag=Fighter] minecraft:chainmail_chestplate
clear @s[tag=Fighter] minecraft:chainmail_leggings
clear @s[tag=Fighter] minecraft:chainmail_boots
clear @s[tag=Skirmisher] minecraft:leather_helmet
clear @s[tag=Skirmisher] minecraft:leather_chestplate
clear @s[tag=Skirmisher] minecraft:leather_leggings
clear @s[tag=Skirmisher] minecraft:leather_boots

#repair fighter armor
execute as @s[tag=Fighter,nbt=!{Inventory:[{Slot:103b}]}] run replaceitem entity @s armor.head minecraft:chainmail_helmet
execute as @s[tag=Fighter,nbt=!{Inventory:[{Slot:102b}]}] run replaceitem entity @s armor.chest minecraft:chainmail_chestplate
execute as @s[tag=Fighter,nbt=!{Inventory:[{Slot:101b}]}] run replaceitem entity @s armor.legs minecraft:chainmail_leggings
execute as @s[tag=Fighter,nbt=!{Inventory:[{Slot:100b}]}] run replaceitem entity @s armor.feet minecraft:chainmail_boots

#replace skirmisher armor
execute as @s[tag=Skirmisher,nbt=!{Inventory:[{Slot:103b}]}] run replaceitem entity @s armor.head minecraft:leather_helmet
execute as @s[tag=Skirmisher,nbt=!{Inventory:[{Slot:102b}]}] run replaceitem entity @s armor.chest minecraft:leather_chestplate
execute as @s[tag=Skirmisher,nbt=!{Inventory:[{Slot:101b}]}] run replaceitem entity @s armor.legs minecraft:leather_leggings
execute as @s[tag=Skirmisher,nbt=!{Inventory:[{Slot:100b}]}] run replaceitem entity @s armor.feet minecraft:leather_boots

tag @s remove repair
