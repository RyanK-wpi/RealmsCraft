#support function for giving a player a class
#Author: Ryan Keller, Feb 2021

#clear previous class
function classbot:class/clear

#Tags
tag @s add Fighter

#apply 12 (6 hearts) health
effect give @s minecraft:absorption 999999 4 true

#gain Fighter Class Equiptment
replaceitem entity @s armor.head minecraft:chainmail_helmet{Unbreakable:1} 1
replaceitem entity @s armor.chest minecraft:chainmail_chestplate{Unbreakable:1} 1
replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1} 1
replaceitem entity @s armor.feet minecraft:chainmail_boots{Unbreakable:1} 1
replaceitem entity @s weapon.offhand minecraft:shield{Unbreakable:1} 1
replaceitem entity @s hotbar.0 minecraft:iron_sword{Unbreakable:1} 1
replaceitem entity @s hotbar.1 minecraft:iron_axe{Unbreakable:1} 1
