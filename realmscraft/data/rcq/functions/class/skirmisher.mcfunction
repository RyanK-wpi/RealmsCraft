#support function for giving a player a class
#Author: Ryan Keller, Feb 2021

#clear previous class
function rcq:class/clear

#Tags
tag @s add Skirmisher

#gain Skirmisher Class Equiptment
replaceitem entity @s armor.head minecraft:leather_helmet 1
replaceitem entity @s armor.chest minecraft:leather_chestplate 1
replaceitem entity @s armor.legs minecraft:leather_leggings 1
replaceitem entity @s armor.feet minecraft:leather_boots 1
replaceitem entity @s[tag=sword] hotbar.0 minecraft:stone_sword{Unbreakable:1} 1
replaceitem entity @s[tag=axe] hotbar.0 minecraft:stone_axe{Unbreakable:1} 1
replaceitem entity @s hotbar.1 minecraft:bow{Unbreakable:1,Enchantments:[{id:"infinity",lvl:1}]} 1
give @s minecraft:arrow 1

#remove excess Tags
tag @s remove sword
tag @s remove axe
