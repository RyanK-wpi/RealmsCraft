#support function for giving a player a class
#Author: Ryan Keller, Feb 2021

#clear previous class
function rcq:class/clear

#Tags
tag @s add Fighter

#gain Fighter Class Equiptment
replaceitem entity @s armor.head minecraft:chainmail_helmet 1
replaceitem entity @s armor.chest minecraft:chainmail_chestplate 1
replaceitem entity @s armor.legs minecraft:chainmail_leggings 1
replaceitem entity @s armor.feet minecraft:chainmail_boots 1
replaceitem entity @s weapon.offhand minecraft:shield{Unbreakable:1} 1
replaceitem entity @s hotbar.0 minecraft:iron_sword{Unbreakable:1} 1
replaceitem entity @s hotbar.1 minecraft:iron_axe{Unbreakable:1} 1
